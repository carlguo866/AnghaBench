; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_setdelmac_makerc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_setdelmac_makerc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"err%04x\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32)* @qeth_l2_setdelmac_makerc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_setdelmac_makerc(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %9, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %8, %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %30 [
    i32 128, label %14
    i32 129, label %15
    i32 135, label %18
    i32 133, label %21
    i32 134, label %21
    i32 131, label %24
    i32 132, label %24
    i32 130, label %27
  ]

14:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %33

15:                                               ; preds = %12
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %33

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOSPC, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %33

21:                                               ; preds = %12, %12
  %22 = load i32, i32* @EEXIST, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %33

24:                                               ; preds = %12, %12
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %33

27:                                               ; preds = %12
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %33

30:                                               ; preds = %12
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %27, %24, %21, %18, %15, %14
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
