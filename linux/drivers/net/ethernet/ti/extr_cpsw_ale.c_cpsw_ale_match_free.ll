; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_match_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_match_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_ale = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ALE_ENTRY_WORDS = common dso_local global i32 0, align 4
@ALE_TYPE_FREE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_ale*)* @cpsw_ale_match_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ale_match_free(%struct.cpsw_ale* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpsw_ale*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cpsw_ale* %0, %struct.cpsw_ale** %3, align 8
  %9 = load i32, i32* @ALE_ENTRY_WORDS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %31, %1
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.cpsw_ale*, %struct.cpsw_ale** %3, align 8
  %16 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = load %struct.cpsw_ale*, %struct.cpsw_ale** %3, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @cpsw_ale_read(%struct.cpsw_ale* %21, i32 %22, i32* %12)
  %24 = call i32 @cpsw_ale_get_entry_type(i32* %12)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ALE_TYPE_FREE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %37

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %13

34:                                               ; preds = %13
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cpsw_ale_read(%struct.cpsw_ale*, i32, i32*) #2

declare dso_local i32 @cpsw_ale_get_entry_type(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
