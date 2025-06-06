;; Extraction Planning Contract
;; Plans and manages resource extraction operations

(define-constant ERR_UNAUTHORIZED (err u300))
(define-constant ERR_PLAN_NOT_FOUND (err u301))
(define-constant ERR_INVALID_DATES (err u302))
(define-constant ERR_RESOURCE_UNAVAILABLE (err u303))

(define-map extraction-plans
  { plan-id: uint }
  {
    company-id: uint,
    location-id: uint,
    planned-quantity: uint,
    start-date: uint,
    end-date: uint,
    extraction-method: (string-ascii 50),
    status: (string-ascii 20),
    created-by: principal,
    approved: bool
  }
)

(define-data-var next-plan-id uint u1)

;; Create extraction plan
(define-public (create-extraction-plan
  (company-id uint)
  (location-id uint)
  (planned-quantity uint)
  (start-date uint)
  (end-date uint)
  (extraction-method (string-ascii 50))
)
  (let ((plan-id (var-get next-plan-id)))
    (asserts! (> end-date start-date) ERR_INVALID_DATES)
    (asserts! (>= start-date block-height) ERR_INVALID_DATES)
    (map-set extraction-plans
      { plan-id: plan-id }
      {
        company-id: company-id,
        location-id: location-id,
        planned-quantity: planned-quantity,
        start-date: start-date,
        end-date: end-date,
        extraction-method: extraction-method,
        status: "pending",
        created-by: tx-sender,
        approved: false
      }
    )
    (var-set next-plan-id (+ plan-id u1))
    (ok plan-id)
  )
)

;; Approve extraction plan
(define-public (approve-plan (plan-id uint))
  (match (map-get? extraction-plans { plan-id: plan-id })
    plan-data
    (begin
      (map-set extraction-plans
        { plan-id: plan-id }
        (merge plan-data { status: "approved", approved: true })
      )
      (ok true)
    )
    ERR_PLAN_NOT_FOUND
  )
)

;; Update plan status
(define-public (update-plan-status (plan-id uint) (new-status (string-ascii 20)))
  (match (map-get? extraction-plans { plan-id: plan-id })
    plan-data
    (begin
      (asserts! (is-eq tx-sender (get created-by plan-data)) ERR_UNAUTHORIZED)
      (map-set extraction-plans
        { plan-id: plan-id }
        (merge plan-data { status: new-status })
      )
      (ok true)
    )
    ERR_PLAN_NOT_FOUND
  )
)

;; Get extraction plan
(define-read-only (get-extraction-plan (plan-id uint))
  (map-get? extraction-plans { plan-id: plan-id })
)
