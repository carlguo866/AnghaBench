; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/gnu/extr_arm-dis.c_psr_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/gnu/extr_arm-dis.c_psr_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"APSR\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"IAPSR\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"EAPSR\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"PSR\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"IPSR\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"EPSR\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"IEPSR\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"MSP\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"PSP\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"MSPLIM\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"PSPLIM\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"PRIMASK\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"BASEPRI\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"BASEPRI_MAX\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"FAULTMASK\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"CONTROL\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"MSP_NS\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"PSP_NS\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"MSPLIM_NS\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"PSPLIM_NS\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"PRIMASK_NS\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"BASEPRI_NS\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"FAULTMASK_NS\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"CONTROL_NS\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"SP_NS\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @psr_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @psr_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %30 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 5, label %9
    i32 6, label %10
    i32 7, label %11
    i32 8, label %12
    i32 9, label %13
    i32 10, label %14
    i32 11, label %15
    i32 16, label %16
    i32 17, label %17
    i32 18, label %18
    i32 19, label %19
    i32 20, label %20
    i32 136, label %21
    i32 137, label %22
    i32 138, label %23
    i32 139, label %24
    i32 144, label %25
    i32 145, label %26
    i32 147, label %27
    i32 148, label %28
    i32 152, label %29
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %31

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %31

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %31

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %31

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %31

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %31

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %31

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %31

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %31

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %31

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %31

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %31

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %31

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %31

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %31

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %31

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %31

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %31

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %31

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %31

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %31

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %31

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %31

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %31

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %31

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %31

31:                                               ; preds = %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
