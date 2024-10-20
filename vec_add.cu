#include <stdio.h>
#include <cuda.h>
#include <cupti.h>

void checkCUPTIError(CUptiResult err, const char *msg) {
    if (err != CUPTI_SUCCESS) {
        const char *errStr;
        cuptiGetResultString(err, &errStr);
        fprintf(stderr, "%s: %s\n", msg, errStr);
        exit(-1);
    }
}




int main() {
    CUptiResult cuptiStatus;

    // Subscribe to CUPTI events
    //cupti_subscription_id subscriptionId;
 //   cuptiSubscribe(&subscriptionId, CUPTI_ACTIVITY_KIND_KERNEL, callback, &activityHandle);
  
    // Initialize CUPTI
//    cuptiStatus = cuptiSubscribe(); //cuptiSubscribe(&subscriber, (CUpti_CallbackFunc)callbackFunction, NULL);
//    checkCUPTIError(cuptiStatus, "Failed to subscribe to CUPTI");

    return 0;
}



