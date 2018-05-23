#include "stdio.h"

#define MAXSIZE 50
typedef struct {
    int key;
    int data;
} SortItem, SqList[MAXSIZE];

/**
 * 直接插入排序
 * @param sqList
 * @param length
 */
void insertSort(SqList sqList, int length) {
    int i, j;
    SortItem item;
    for (i = 0; i < length; i++) {
        item = sqList[i];
        for (j = i; j > 0 && item.data < sqList[j - 1].data; j--) {
            sqList[j] = sqList[j - 1];
        }
        sqList[j] = item;
    }
}

void selectSort(SqList sqList, int length) {
    int i, j, min;
    SortItem temp;
    for (i = 0; i < length - 1; i++) {
        min = i;
        for (j = i + 1; j < length; j++) {
            if (sqList[min].data > sqList[j].data) {
                min = j;
            }
        }
        if (min != i) {
            temp = sqList[min];
            sqList[min] = sqList[i];
            sqList[i] = temp;
        }
    }
}

int main() {
    SqList sqListA;
    SqList sqListB;
    int length;
    printf("请输入数组长度：");
    scanf("%d", &length); //NOLINT
    printf("请输入待排序的数组：\n");
    for (int i = 0; i < length; i++) {
        scanf("%d", &sqListA[i].data); // NOLINT
        sqListB[i].data = sqListA[i].data;
    }
    printf("直接插入排序结果：");
    insertSort(sqListA, length);
    for (int j = 0; j < length; j++) {
        printf("%d ", sqListA[j].data);
    }
    printf("\n");
    printf("直接选择排序结果：");
    selectSort(sqListB, length);
    for (int j = 0; j < length; j++) {
        printf("%d ", sqListB[j].data);
    }
    printf("\n");
}