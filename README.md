# terraform-gcp-example

This is a simple example of how to use Terraform to create a GCP project.

## 在 GCP 上面建立 Service Account

確保已經安裝並設置了 Google Cloud SDK，並且已經登錄到您的 Google Cloud 帳號。您可以執行以下指令來檢查是否正確安裝了 gcloud 工具：

```bash
$ gcloud version
Google Cloud SDK 432.0.0
bq 2.0.93
core 2023.05.19
gcloud-crc32c 1.0.0
gke-gcloud-auth-plugin 0.5.3
gsutil 5.24
```

接下來，使用以下指令建立 service account：

```bash
gcloud iam service-accounts create [SERVICE_ACCOUNT_NAME] \
  --display-name "[DISPLAY_NAME]"
```

將 [SERVICE_ACCOUNT_NAME] 替換為您想要建立的 service account 名稱，並將 [DISPLAY_NAME] 替換為適當的顯示名稱。

建立 service account 後，您可以為該帳號新增所需的角色/權限。例如，如果要將 service account 分配為專案的所有者，請執行以下指令：

```bash
gcloud projects add-iam-policy-binding [PROJECT_ID] \
    --member "serviceAccount:[SERVICE_ACCOUNT_EMAIL]" \
    --role roles/owner
```

將 [PROJECT_ID] 替換為您的專案 ID，將 [SERVICE_ACCOUNT_EMAIL] 替換為剛剛建立的 service account 的電子郵件地址。

完成以上步驟後，您已成功使用 gcloud 指令建立了一個 service account，並為其分配了適當的角色/權限。接下來，您可以使用以下指令建立一個 service account 金鑰：

```bash
gcloud iam service-accounts keys create [FILE_NAME].json \
  --iam-account [SERVICE_ACCOUNT_EMAIL]
```

將 [FILE_NAME] 替換為您想要建立的金鑰檔案名稱，將 [SERVICE_ACCOUNT_EMAIL] 替換為剛剛建立的 service account 的電子郵件地址。請將此金鑰檔案妥善保存，因為您稍後將需要使用它。
