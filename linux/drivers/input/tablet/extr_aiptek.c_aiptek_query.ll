; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_aiptek.c_aiptek_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_aiptek.c_aiptek_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiptek = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"aiptek_query failed: returned 0x%02x 0x%02x 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aiptek*, i8, i8)* @aiptek_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aiptek_query(%struct.aiptek* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aiptek*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.aiptek* %0, %struct.aiptek** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32 12, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32* @kmalloc(i32 12, i32 %11)
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %74

18:                                               ; preds = %3
  %19 = load i32*, i32** %10, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 2, i32* %20, align 4
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %22, i32* %24, align 4
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.aiptek*, %struct.aiptek** %5, align 8
  %30 = load i8, i8* %6, align 1
  %31 = load i8, i8* %7, align 1
  %32 = call i64 @aiptek_command(%struct.aiptek* %29, i8 zeroext %30, i8 zeroext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %18
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @kfree(i32* %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %74

39:                                               ; preds = %18
  %40 = load %struct.aiptek*, %struct.aiptek** %5, align 8
  %41 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @msleep(i32 %43)
  %45 = load %struct.aiptek*, %struct.aiptek** %5, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @aiptek_get_report(%struct.aiptek* %45, i32 3, i32 2, i32* %46, i32 12)
  store i32 %47, i32* %9, align 4
  %48 = icmp ne i32 %47, 12
  br i1 %48, label %49, label %66

49:                                               ; preds = %39
  %50 = load %struct.aiptek*, %struct.aiptek** %5, align 8
  %51 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_dbg(i32* %53, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59, i32 %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %70

66:                                               ; preds = %39
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = call i32 @get_unaligned_le16(i32* %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %66, %49
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @kfree(i32* %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %34, %15
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @aiptek_command(%struct.aiptek*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @aiptek_get_report(%struct.aiptek*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
