; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_write_initvals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_write_initvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.b43_iv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@B43_IV_32BIT = common dso_local global i32 0, align 4
@B43_IV_OFFSET_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Initial Values Firmware file-format error.\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, %struct.b43_iv*, i64, i64)* @b43_write_initvals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_write_initvals(%struct.b43_wldev* %0, %struct.b43_iv* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43_wldev*, align 8
  %7 = alloca %struct.b43_iv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.b43_iv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %6, align 8
  store %struct.b43_iv* %1, %struct.b43_iv** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = call i32 @BUILD_BUG_ON(i32 1)
  %17 = load %struct.b43_iv*, %struct.b43_iv** %7, align 8
  store %struct.b43_iv* %17, %struct.b43_iv** %10, align 8
  store i64 0, i64* %12, align 8
  br label %18

18:                                               ; preds = %91, %4
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %94

22:                                               ; preds = %18
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %99

26:                                               ; preds = %22
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 %27, 4
  store i64 %28, i64* %9, align 8
  %29 = load %struct.b43_iv*, %struct.b43_iv** %10, align 8
  %30 = getelementptr inbounds %struct.b43_iv, %struct.b43_iv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be16_to_cpu(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @B43_IV_32BIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* @B43_IV_OFFSET_MASK, align 4
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp sge i32 %43, 4096
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  br label %99

46:                                               ; preds = %26
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load i64, i64* %9, align 8
  %51 = icmp ult i64 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %99

53:                                               ; preds = %49
  %54 = load i64, i64* %9, align 8
  %55 = sub i64 %54, 4
  store i64 %55, i64* %9, align 8
  %56 = load %struct.b43_iv*, %struct.b43_iv** %10, align 8
  %57 = getelementptr inbounds %struct.b43_iv, %struct.b43_iv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = call i32 @get_unaligned_be32(i32* %58)
  store i32 %59, i32* %14, align 4
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @b43_write32(%struct.b43_wldev* %60, i32 %61, i32 %62)
  %64 = load %struct.b43_iv*, %struct.b43_iv** %10, align 8
  %65 = bitcast %struct.b43_iv* %64 to i32*
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = bitcast i32* %67 to %struct.b43_iv*
  store %struct.b43_iv* %68, %struct.b43_iv** %10, align 8
  br label %90

69:                                               ; preds = %46
  %70 = load i64, i64* %9, align 8
  %71 = icmp ult i64 %70, 4
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %99

73:                                               ; preds = %69
  %74 = load i64, i64* %9, align 8
  %75 = sub i64 %74, 4
  store i64 %75, i64* %9, align 8
  %76 = load %struct.b43_iv*, %struct.b43_iv** %10, align 8
  %77 = getelementptr inbounds %struct.b43_iv, %struct.b43_iv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @be16_to_cpu(i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @b43_write16(%struct.b43_wldev* %81, i32 %82, i32 %83)
  %85 = load %struct.b43_iv*, %struct.b43_iv** %10, align 8
  %86 = bitcast %struct.b43_iv* %85 to i32*
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  %89 = bitcast i32* %88 to %struct.b43_iv*
  store %struct.b43_iv* %89, %struct.b43_iv** %10, align 8
  br label %90

90:                                               ; preds = %73, %53
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %12, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %12, align 8
  br label %18

94:                                               ; preds = %18
  %95 = load i64, i64* %9, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %99

98:                                               ; preds = %94
  store i32 0, i32* %5, align 4
  br label %110

99:                                               ; preds = %97, %72, %52, %45, %25
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %101 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @b43err(i32 %102, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %105 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @b43_print_fw_helptext(i32 %106, i32 1)
  %108 = load i32, i32* @EPROTO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %99, %98
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_print_fw_helptext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
