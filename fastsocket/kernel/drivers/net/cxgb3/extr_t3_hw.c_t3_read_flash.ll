; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_read_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_read_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@SF_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SF_RD_DATA_FAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32, i32*, i32)* @t3_read_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_read_flash(%struct.adapter* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = add i64 %14, %17
  %19 = load i32, i32* @SF_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 3
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %75

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @swab32(i32 %30)
  %32 = load i32, i32* @SF_RD_DATA_FAST, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.adapter*, %struct.adapter** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @sf1_write(%struct.adapter* %34, i32 4, i32 1, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load %struct.adapter*, %struct.adapter** %7, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @sf1_read(%struct.adapter* %39, i32 1, i32 1, i32* %40)
  store i32 %41, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %29
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %6, align 4
  br label %75

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %69, %45
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %46
  %50 = load %struct.adapter*, %struct.adapter** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp ugt i32 %51, 1
  %53 = zext i1 %52 to i32
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @sf1_read(%struct.adapter* %50, i32 4, i32 %53, i32* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %6, align 4
  br label %75

60:                                               ; preds = %49
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @htonl(i32 %65)
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %60
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, -1
  store i32 %71, i32* %9, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %10, align 8
  br label %46

74:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %58, %43, %26
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @sf1_write(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @sf1_read(%struct.adapter*, i32, i32, i32*) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
