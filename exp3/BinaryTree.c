//
// Created by percycrn on 2018/4/15.
//


#include "stdio.h"
#include "stdlib.h"

// binary tree data structure
typedef struct Node {
    int data;
    struct Node *left;
    struct Node *right;
} BTNode, *PBTNode, *BiTreeLink;

/**
 * to create a new binary tree
 * @param nodes
 * @param position
 * @param num
 * @return a binary tree
 */
BiTreeLink createBiTree(int *nodes, int position, int num) {
    PBTNode p;
    if (position >= num) {
        return NULL;
    }
    p = (PBTNode) malloc(sizeof(BTNode));
    if (!p) {
        printf("fail to initialize the binary tree.");
        return 0;
    }
    p->data = nodes[position];
    p->left = createBiTree(nodes, 2 * position, num);
    p->right = createBiTree(nodes, 2 * position + 1, num);
    return p;
}

PBTNode insertRight(PBTNode r, int data) {
    if (!r) {
        return NULL;
    }
    PBTNode p = (PBTNode) malloc(sizeof(BTNode));
    p->data = data;
    p->left = NULL;
    p->right = r->right;
    r->right = p;
    return p;
}

PBTNode insertLeft(PBTNode l, int data) {
    if (!l) {
        return NULL;
    }
    PBTNode p = (PBTNode) malloc(sizeof(BTNode));
    p->data = data;
    p->left = l->left;
    l->left = p;
    return p;
}

/**
 * release the binary tree
 * @param r
 */
void releaseTree(PBTNode *r) {
    if (*r) {
        releaseTree(&(*r)->left);
        releaseTree(&(*r)->right);
        free(*r);
    }
}

void deleteRight(PBTNode r) {
    if (!r) {
        return;
    }
    releaseTree(&(r->right));
    r->right = NULL;
}

void deleteLeft(PBTNode r) {
    if (!r) {
        return;
    }
    releaseTree(&(r->left));
    r->left = NULL;
}

/**
 * 先序遍历
 * @param biTreeLink
 */
void preOrder(BiTreeLink biTreeLink) {
    if (biTreeLink != NULL) {
        printf("%d ", biTreeLink->data);
        preOrder(biTreeLink->left);
        preOrder(biTreeLink->right);
    }
}

/**
 * 中序遍历
 * @param biTreeLink
 */
void inOrder(BiTreeLink biTreeLink) {
    if (biTreeLink != NULL) {
        inOrder(biTreeLink->left);
        printf("%d ", biTreeLink->data);
        inOrder(biTreeLink->right);
    }
}

/**
 * 后序遍历
 * @param biTreeLink
 */
void postOrder(BiTreeLink biTreeLink) {
    if (biTreeLink != NULL) {
        postOrder(biTreeLink->left);
        postOrder(biTreeLink->right);
        printf("%d ", biTreeLink->data);
    }
}

/**
 * 通过递归求得二叉树的节点数量
 * @param r
 * @return the quantity of the nodes in binary tree
 */
int BiTreeCount1(BiTreeLink r) {
    if (r == NULL) {
        return 0;
    } else {
        return BiTreeCount1(r->left) + BiTreeCount1(r->right) + 1;
    }
}

int count = 0;

/**
 * 通过前中后序遍历的方法求二叉树的节点数
 * @param r
 * @return the quantity of the nodes in binary tree
 */
int BiTreeCount2(BiTreeLink r) {
    if (r != NULL) {
        printf("%d ", r->data);
        preOrder(r->left);
        preOrder(r->right);
        count++;
    }
}

int main() {
    int nodes[20];
    for (int i = 0; i < 20; i++) {
        nodes[i] = i;
    }
    BiTreeLink biTreeLink = createBiTree(nodes, 1, 20);
    preOrder(biTreeLink);
    printf("\n");
    inOrder(biTreeLink);
    printf("\n");
    postOrder(biTreeLink);
    printf("\n");
    BiTreeCount2(biTreeLink);
    printf("%d\n", count);
    printf("%d", BiTreeCount1(biTreeLink));
}

