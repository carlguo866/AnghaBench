; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"DataDigest wasn't negotiated to None\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"IFMarker wasn't negotiated to No\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"OFMarker wasn't negotiated to No\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cls_conn*, i32, i8*, i32)* @iscsi_iser_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_iser_set_param(%struct.iscsi_cls_conn* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cls_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %53 [
    i32 129, label %12
    i32 131, label %13
    i32 132, label %23
    i32 130, label %33
    i32 128, label %43
  ]

12:                                               ; preds = %4
  br label %59

13:                                               ; preds = %4
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = call i32 @iser_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @EPROTO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %60

22:                                               ; preds = %13
  br label %59

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @sscanf(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = call i32 @iser_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EPROTO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %60

32:                                               ; preds = %23
  br label %59

33:                                               ; preds = %4
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @sscanf(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = call i32 @iser_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @EPROTO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %60

42:                                               ; preds = %33
  br label %59

43:                                               ; preds = %4
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @sscanf(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = call i32 @iser_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @EPROTO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %60

52:                                               ; preds = %43
  br label %59

53:                                               ; preds = %4
  %54 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %54, i32 %55, i8* %56, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %60

59:                                               ; preds = %52, %42, %32, %22, %12
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %53, %48, %38, %28, %18
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @iser_err(i8*) #1

declare dso_local i32 @iscsi_set_param(%struct.iscsi_cls_conn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
