#include <stdio.h>
#include <stdlib.h>

struct Node
{
    int data;
    struct Node* link;
} *head = NULL;

void INSERT(int data){
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = data;
    newNode->link = NULL;
    if(head == NULL){
        head = newNode;
    } else{
        struct Node* temp = head;
        while(temp->link != NULL){
            temp = temp->link;
        }
        temp->link = newNode;
    }
}

void DELETE(int data){
    if(head == NULL){
        printf("Link List is empty\n");
        return ;
    } else{
        struct Node *temp = head;
        if(head->data == data){
            head = head->link;
            printf("removed = %d\n",temp->data);
            free(temp);
        } else{
            while(temp->link != NULL && temp->link->data != data){
                temp = temp->link;
            }
            if(temp->link== NULL){
                printf("Node not found\n");
                return ;
            }
            else if(temp->link->data == data){
                struct Node * removed = temp->link;
                temp->link = removed->link;
                printf("removed = %d\n",removed->data);
                free(removed);
            }
        }
    }
}

void DISPLAY(){
    struct Node *temp = head;
    while(temp != NULL){
        printf("%d ",temp->data);
        temp = temp->link;
    }
    printf("\n");
    return ;
}

void REMOVEALL(){
    do
    {
        struct Node *temp = head;
        struct Node *pre = head;
        if(head->link == NULL){
            printf("removed = %d\n",head->data);
            free(head);
            head = NULL;
        } else{
            while(temp->link != NULL){
                pre = temp;
                temp = temp->link;
            }
            printf("removed = %d\n",temp->data);
            pre->link = NULL;
            free(temp);
        }
    } while (head != NULL);
    return ;
}

void main(){
    // int choice,n;
    // do{
    //     printf("1. INSERT\n2> DELETE\n3.DISPLAY\n4.REMOVEALL\n5. EXIT");
    //     printf("ENter your choice: ");
    //     scanf("%d",&choice);
    //     switch (choice)
    //     {
    //         case 1:
    //             printf("Enter new Node Value: ");
    //             scanf("%d",&n);
    //             INSERT(n);
    //             break;
        
    //         case 2:
    //             printf("Enter delete Node Value: ");
    //             scanf("%d",&n);
    //             DELETE(n);
    //             break;
        
        
    //         case 3:
    //             DISPLAY(n);
    //             break;

        
    //         case 4:
    //             REMOVEALL(n);
    //             break;
    //     default:
    //         printf("\nPlease Enter Valid Choice\n");
    //         break;
    //     }
    // }while(choice != 5);
    INSERT(1);
    DISPLAY();
    INSERT(2);
    DISPLAY();
    INSERT(3);
    DISPLAY();
    INSERT(4);
    DISPLAY();
    DELETE(1);
    DISPLAY();
    DELETE(4);
    DISPLAY();
    INSERT(5);
    DISPLAY();
    DELETE(3);
    DISPLAY();
    REMOVEALL();
    DISPLAY();
}