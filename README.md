# LightningPaymentCheck
Check a Lightning payment has been sent and corresponds to a given Preimage.

This Bash script allows you to calculate a SHA-256 payment hash from a provided preimage and verify it against a Lightning Network invoice. The script guides you through a series of steps and provides feedback on whether the calculated payment hash matches the one extracted from the invoice.

## How to Use

1. **Enter the Preimage:**
   The tool will prompt you to enter the preimage, which is a hexadecimal string used to calculate the payment hash.

2. **Enter the Lightning Invoice (Payment Request):**
   Provide the complete Lightning Network invoice (payment request) for verification. The tool generates a link to an invoice decoding website.

3. **Verify Payment Hash:**
   The tool will display a link to the invoice decoding website. Check if the payment hash in the link corresponds to the one calculated in step 1.

4. **Confirm or Deny:**
   You'll be asked if the payment hash matches. Answer "yes" if they match or "no" if they don't.

5. **Final Feedback:**
   Based on your response, the tool will display "Payment confirmed" or "Payment NOT confirmed," along with potential reasons.

## Running the Script

1. Make the script executable:
chmod +x preimage2paymenthash.sh

2. Run the script:
./preimage2paymenthash.sh


## Example

```bash
$ ./preimage2paymenthash.sh
Step 1: Enter the Preimage: 5bdc052ed6971595eef2eb9e75228e1c55fe5ac5f6dfc05c9ff021a604fdedfc
Step 2: Enter the Lightning Invoice (Payment Request): lnbc339110n1pjvy4a4sp5hzd4jf9xanmvh42yxe480jpkf50p8jdug60altp26wx5al9wy98spp5744ueect4dgrgl2ms3zyu3gjxx744k8ava9mhqj5z44p0537gkpsdpa2pskjepqw3hjqnr4des5ummyv5szsnmjv3jhygzfgsazqatnv4erzdp4xcezjxqr8qlcqpjrzjqf6nw3yaht6kxcxzz4axq43hacw9jj3uy8r87es9jqru0e6f82zzurqz0sqq47sqqyqqqqlgqqqqqqgq9q9qxpqysgqltjpdncf8mqjc4t65j7xjng729gjd7wjymflll49ct2exhk4789rvv47auksj4xmerpzy8u6vgvjkf32rle7vx7men3vt0npc8k7k2sqsdvel4
Step 3: Please check if the payment hash in this link corresponds to the one you got in step 1:
[Payment Hash Verification Link](https://lightningdecoder.com/invoice/lnbc339110n1pjvy4a4sp5hzd4jf9xanmvh42yxe480jpkf50p8jdug60altp26wx5al9wy98spp5744ueect4dgrgl2ms3zyu3gjxx744k8ava9mhqj5z44p0537gkpsdpa2pskjepqw3hjqnr4des5ummyv5szsnmjv3jhygzfgsazqatnv4erzdp4xcezjxqr8qlcqpjrzjqf6nw3yaht6kxcxzz4axq43hacw9jj3uy8r87es9jqru0e6f82zzurqz0sqq47sqqyqqqqlgqqqqqqgq9q9qxpqysgqltjpdncf8mqjc4t65j7xjng729gjd7wjymflll49ct2exhk4789rvv47auksj4xmerpzy8u6vgvjkf32rle7vx7men3vt0npc8k7k2sqsdvel4)
Does the payment hash match? (yes/no): no
Payment NOT confirmed. The payment hash might correspond to a different payment or the transaction has never been sent.
