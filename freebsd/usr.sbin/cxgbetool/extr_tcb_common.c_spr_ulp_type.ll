; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcb_common.c_spr_ulp_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcb_common.c_spr_ulp_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@PM_MODE_PASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"TOE\00", align 1
@PM_MODE_DDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"DDP\00", align 1
@PM_MODE_ISCSI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"ISCSI\00", align 1
@PM_MODE_IWARP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"IWARP\00", align 1
@PM_MODE_RDDP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"RDMA\00", align 1
@PM_MODE_IANDP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"IANDP_DDP\00", align 1
@PM_MODE_FCOE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"FCoE\00", align 1
@PM_MODE_USER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@PM_MODE_TLS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"TLS\00", align 1
@PM_MODE_DTLS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"DTLS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @spr_ulp_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i32, i32* @PM_MODE_PASS, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %62

8:                                                ; preds = %1
  %9 = load i32, i32* @PM_MODE_DDP, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %61

13:                                               ; preds = %8
  %14 = load i32, i32* @PM_MODE_ISCSI, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %60

18:                                               ; preds = %13
  %19 = load i32, i32* @PM_MODE_IWARP, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %59

23:                                               ; preds = %18
  %24 = load i32, i32* @PM_MODE_RDDP, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %58

28:                                               ; preds = %23
  %29 = load i32, i32* @PM_MODE_IANDP, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %57

33:                                               ; preds = %28
  %34 = load i32, i32* @PM_MODE_FCOE, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %56

38:                                               ; preds = %33
  %39 = load i32, i32* @PM_MODE_USER, align 4
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %55

43:                                               ; preds = %38
  %44 = load i32, i32* @PM_MODE_TLS, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @PM_MODE_DTLS, align 4
  %50 = load i32, i32* %2, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %53

53:                                               ; preds = %52, %48
  br label %54

54:                                               ; preds = %53, %47
  br label %55

55:                                               ; preds = %54, %42
  br label %56

56:                                               ; preds = %55, %37
  br label %57

57:                                               ; preds = %56, %32
  br label %58

58:                                               ; preds = %57, %27
  br label %59

59:                                               ; preds = %58, %22
  br label %60

60:                                               ; preds = %59, %17
  br label %61

61:                                               ; preds = %60, %12
  br label %62

62:                                               ; preds = %61, %7
  %63 = load i8*, i8** %3, align 8
  ret i8* %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
