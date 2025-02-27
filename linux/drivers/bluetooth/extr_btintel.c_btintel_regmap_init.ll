; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_regmap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_regmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.hci_dev = type { i32 }
%struct.regmap_ibt_context = type { %struct.hci_dev*, i8*, i8* }

@.str = private unnamed_addr constant [28 x i8] c"regmap: Init R%x-W%x region\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@regmap_ibt = common dso_local global i32 0, align 4
@regmap_ibt_cfg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regmap* @btintel_regmap_init(%struct.hci_dev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.regmap_ibt_context*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @bt_dev_info(%struct.hci_dev* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.regmap_ibt_context* @kzalloc(i32 24, i32 %13)
  store %struct.regmap_ibt_context* %14, %struct.regmap_ibt_context** %8, align 8
  %15 = load %struct.regmap_ibt_context*, %struct.regmap_ibt_context** %8, align 8
  %16 = icmp ne %struct.regmap_ibt_context* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.regmap* @ERR_PTR(i32 %19)
  store %struct.regmap* %20, %struct.regmap** %4, align 8
  br label %35

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.regmap_ibt_context*, %struct.regmap_ibt_context** %8, align 8
  %24 = getelementptr inbounds %struct.regmap_ibt_context, %struct.regmap_ibt_context* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.regmap_ibt_context*, %struct.regmap_ibt_context** %8, align 8
  %27 = getelementptr inbounds %struct.regmap_ibt_context, %struct.regmap_ibt_context* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %29 = load %struct.regmap_ibt_context*, %struct.regmap_ibt_context** %8, align 8
  %30 = getelementptr inbounds %struct.regmap_ibt_context, %struct.regmap_ibt_context* %29, i32 0, i32 0
  store %struct.hci_dev* %28, %struct.hci_dev** %30, align 8
  %31 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %32 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %31, i32 0, i32 0
  %33 = load %struct.regmap_ibt_context*, %struct.regmap_ibt_context** %8, align 8
  %34 = call %struct.regmap* @regmap_init(i32* %32, i32* @regmap_ibt, %struct.regmap_ibt_context* %33, i32* @regmap_ibt_cfg)
  store %struct.regmap* %34, %struct.regmap** %4, align 8
  br label %35

35:                                               ; preds = %21, %17
  %36 = load %struct.regmap*, %struct.regmap** %4, align 8
  ret %struct.regmap* %36
}

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, i8*, i8*) #1

declare dso_local %struct.regmap_ibt_context* @kzalloc(i32, i32) #1

declare dso_local %struct.regmap* @ERR_PTR(i32) #1

declare dso_local %struct.regmap* @regmap_init(i32*, i32*, %struct.regmap_ibt_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
