# IDS789 Technical Project: Credit Card Fraud Detection

#### **Project Overview**

This project involves predicting the probability of an online transaction being fraudulent, denoted by the binary target variable `isFraud`. Fraud detection is a critical application in financial technology, helping to protect users and businesses from unauthorized or deceptive activities. The goal is to leverage transaction and identity data to build a machine learning model capable of accurately classifying fraudulent transactions.

---

#### **Dataset Description**

The dataset is provided in two main parts: 

1. **Transaction Data (`transaction` files):**
   Contains details about transactions, including categorical features like payment product types, card details, and email domains.

2. **Identity Data (`identity` files):**
   Provides supplementary information related to transactions, such as device type and information.

Both datasets are joined using the `TransactionID` key. Note that some transactions do not have corresponding identity information.

---

#### **Features**

##### **Transaction Data Features:**
- **Categorical Features:**
  - `ProductCD`: Product type used for the purchase.
  - `card1 - card6`: Payment card information.
  - `addr1`, `addr2`: Address information (e.g., billing region, country).
  - `P_emaildomain`, `R_emaildomain`: Payer and recipient email domains.
  - `M1 - M9`: Match flags.

- **Other Key Features:**
  - `TransactionDT`: A relative time measure for the transaction (not an absolute timestamp).

##### **Identity Data Features:**
- **Categorical Features:**
  - `DeviceType`: Type of device used (e.g., mobile, desktop).
  - `DeviceInfo`: Specific device information.
  - `id_12 - id_38`: Other identity-related features.

---

#### **Files in the Dataset**

- **`train_transaction.csv`**: Contains transaction data for training the model.
- **`train_identity.csv`**: Contains identity data for training.
- **`test_transaction.csv`**: Contains transaction data for testing the model. The target variable (`isFraud`) is missing in this file.
- **`test_identity.csv`**: Contains identity data for testing.
- **`sample_submission.csv`**: A sample submission file to guide the format of predictions.

---

#### **Key Notes**

- The data requires merging `transaction` and `identity` datasets using the `TransactionID` key for comprehensive modeling.
- Not all `TransactionID` entries in the transaction dataset will have a corresponding identity entry.
- Careful handling of missing data, feature engineering, and encoding of categorical variables is essential for optimal model performance.

---

### Timeline

1. **Data Preprocessing:**
   - Merge `transaction` and `identity` datasets on `TransactionID`.
   - Handle missing values and categorical features effectively.
   
2. **Exploratory Data Analysis:**
   - Analyze key trends in fraud rates across categorical features.
   - Visualize relationships between features and the target variable.

3. **Model Training:**
   - Develop and train machine learning models (e.g., Logistic Regression, Random Forest, Gradient Boosting).
   - Evaluate models using metrics such as AUC-ROC and F1 score.

---

#### **Acknowledgments**

The dataset and competition are hosted by IEEE and VESTA corporation. For further insights and discussions, refer to !(Link)[https://www.kaggle.com/c/ieee-fraud-detection/discussion/101203].