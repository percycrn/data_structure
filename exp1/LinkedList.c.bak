//
// Created by percycrn on 2018/3/22.
//
#include <stdlib.h>
#include "stdio.h"

// linkedList data structure
typedef struct Node {
    int data;
    struct Node *next;
} LNode, *PNode, *linkedList;

/** initialize linked list
 *
 * @param list
 * @return {@code 1} if the function works well
 */
int initList(linkedList *list) {
    // create head pointer
    *list = (linkedList) malloc(sizeof(LNode));
    (*list)->data = -1;
    (*list)->next = NULL;
    return 1;
}

/** get size of linkedList
 *
 * @param *list
 * @return the length of the linkedList
 */
int getLength(linkedList list) {
    int count = 0;
    PNode pNode = list->next;
    while (pNode) {
        count++;
        pNode = pNode->next;
    }
    return count;
}

/** judge whether the linkedList is empty or not
 *
 * @param list
 * @return {@code 0} if linkedList is not empty
 *   while {@code 1} if linkedList is empty
 */
int isListEmpty(linkedList list) {
    if (list->next) {
        return 1;
    } else {
        return 0;
    }
}

/** insert data into linkedList (before the position and the position starts from 1)
 *
 * @param list
 * @param position
 * @param item
 * @return {@code 0} if insert operation fail
 *   while {@code 1} if insert operation success
 */
int insert(linkedList list, int position, int item) {
    PNode pointer = list, newNode;
    int i = 0;
    while (pointer && i < position - 1) {
        pointer = pointer->next;
        i++;
    }
    if (!pointer || i > position - 1) {
        printf("the insert position is illegal\n");
        return 0;
    }
    newNode = (PNode) malloc(sizeof(LNode));
    newNode->data = item;
    newNode->next = pointer->next;
    pointer->next = newNode;
    return 1;
}

/** delete item with specific position
 *
 * @param list
 * @param position
 * @param item
 * @return {@code 0} if delete operation fail
 *   while {@code 1} if delete operation success
 */
int delete(linkedList list, int position, int *item) {
    PNode pointer = list, afterPosition;
    int i = 0;
    while (pointer->next && i < position - 1) {
        pointer = pointer->next;
        i++;
    }
    if (!pointer->next || i > position - 1) {
        printf("the delete position is illegal\n");
        return 0;
    }
    afterPosition = pointer->next;
    pointer->next = afterPosition->next;
    *item = afterPosition->data;
    free(afterPosition); // free the space of deleted item
    return 1;
}

/** output the SqList
 *
 * @param list
 */
void printLinkedList(linkedList list) {
    PNode pointer = list->next;
    while (pointer) {
        printf("%d ", pointer->data);
        pointer = pointer->next;
    }
    printf("\n");
}

int main() {
    linkedList listA;
    initList(&listA);
    printLinkedList(listA);
    for (int i = 1; i <= 5; i++) {
        insert(listA, i, i + 1);
    }
    printLinkedList(listA);
    int deleteItem; // to store the deleted item
    delete(listA, 2, &deleteItem);
    printLinkedList(listA);
    printf("deleted item is %d", deleteItem);
}




































