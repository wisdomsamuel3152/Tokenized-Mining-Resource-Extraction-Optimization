# Tokenized Mining Resource Extraction Optimization

A comprehensive blockchain-based system for optimizing mining resource extraction operations using Clarity smart contracts on the Stacks blockchain.

## Overview

This system provides a complete solution for managing mining operations through five interconnected smart contracts that handle company verification, resource mapping, extraction planning, environmental monitoring, and safety protocols.

## Features

### 🏢 Mining Company Verification
- Company registration and verification system
- License validation and tracking
- Status management for mining operations
- Ownership verification

### 🗺️ Resource Mapping
- Geological resource location mapping
- Mineral type and quantity tracking
- Quality grade assessment
- Resource availability status

### 📋 Extraction Planning
- Extraction operation planning and scheduling
- Resource allocation and quota management
- Method selection and optimization
- Approval workflow management

### 🌱 Environmental Monitoring
- Real-time environmental impact tracking
- Air and water quality monitoring
- Soil contamination assessment
- Compliance status reporting

### 🛡️ Safety Protocol Management
- Safety protocol creation and management
- Incident reporting and tracking
- Resolution workflow
- Safety compliance monitoring

## Smart Contracts

### 1. Mining Company Verification (\`mining-company-verification.clar\`)
Manages the registration and verification of mining companies.

**Key Functions:**
- \`register-company\`: Register a new mining company
- \`verify-company\`: Verify a registered company (admin only)
- \`get-company\`: Retrieve company information
- \`is-company-verified\`: Check verification status

### 2. Resource Mapping (\`resource-mapping.clar\`)
Handles the mapping and tracking of mineral resource locations.

**Key Functions:**
- \`map-resource\`: Add a new resource location
- \`update-resource-status\`: Update resource availability
- \`get-resource-location\`: Retrieve resource details
- \`get-resource-by-type\`: Find resources by mineral type

### 3. Extraction Planning (\`extraction-planning.clar\`)
Manages extraction operation planning and scheduling.

**Key Functions:**
- \`create-extraction-plan\`: Create new extraction plan
- \`approve-plan\`: Approve extraction plan
- \`update-plan-status\`: Update plan status
- \`get-extraction-plan\`: Retrieve plan details

### 4. Environmental Monitoring (\`environmental-monitoring.clar\`)
Tracks environmental impact and compliance.

**Key Functions:**
- \`submit-environmental-report\`: Submit environmental data
- \`get-environmental-report\`: Retrieve environmental reports
- \`get-location-compliance\`: Check compliance status

### 5. Safety Protocol (\`safety-protocol.clar\`)
Manages safety protocols and incident reporting.

**Key Functions:**
- \`create-safety-protocol\`: Create safety protocols
- \`report-incident\`: Report safety incidents
- \`resolve-incident\`: Mark incidents as resolved
- \`get-safety-protocol\`: Retrieve protocol details

## Installation

1. Clone the repository:
   \`\`\`bash
   git clone <repository-url>
   cd mining-optimization
   \`\`\`

2. Install dependencies:
   \`\`\`bash
   npm install
   \`\`\`

3. Run tests:
   \`\`\`bash
   npm test
   \`\`\`

## Usage

### Deploying Contracts

Deploy the contracts in the following order to ensure proper dependencies:

1. Mining Company Verification
2. Resource Mapping
3. Extraction Planning
4. Environmental Monitoring
5. Safety Protocol

### Basic Workflow

1. **Company Registration**: Register and verify mining companies
2. **Resource Mapping**: Map available mineral resources
3. **Extraction Planning**: Create and approve extraction plans
4. **Environmental Monitoring**: Submit regular environmental reports
5. **Safety Management**: Maintain safety protocols and report incidents

## Testing

The project includes comprehensive tests using Vitest:

\`\`\`bash
npm test
\`\`\`

Test files cover:
- Contract function testing
- Error handling
- Data validation
- Business logic verification

## Error Codes

Each contract uses specific error codes for different failure scenarios:

- **100-199**: Company verification errors
- **200-299**: Resource mapping errors
- **300-399**: Extraction planning errors
- **400-499**: Environmental monitoring errors
- **500-599**: Safety protocol errors

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Security Considerations

- All contracts include proper authorization checks
- Input validation is implemented for all public functions
- Error handling prevents contract failures
- Access control ensures only authorized operations

## Future Enhancements

- Integration with IoT sensors for real-time monitoring
- Advanced analytics and reporting
- Mobile application interface
- Integration with regulatory compliance systems
- Automated compliance reporting

