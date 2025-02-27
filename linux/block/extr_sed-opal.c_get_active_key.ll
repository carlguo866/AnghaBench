; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_get_active_key.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_get_active_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }

@OPAL_UID_LENGTH = common dso_local global i32 0, align 4
@OPAL_ACTIVEKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @get_active_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_active_key(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = mul nuw i64 4, %12
  %18 = trunc i64 %17 to i32
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @build_locking_range(i32* %14, i32 %18, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %37

26:                                               ; preds = %2
  %27 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %28 = load i32, i32* @OPAL_ACTIVEKEY, align 4
  %29 = call i32 @generic_get_column(%struct.opal_dev* %27, i32* %14, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %36 = call i32 @get_active_key_cont(%struct.opal_dev* %35)
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %37

37:                                               ; preds = %34, %32, %24
  %38 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @build_locking_range(i32*, i32, i32) #2

declare dso_local i32 @generic_get_column(%struct.opal_dev*, i32*, i32) #2

declare dso_local i32 @get_active_key_cont(%struct.opal_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
