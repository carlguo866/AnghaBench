; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_device.c_device_is_ready.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_device.c_device_is_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"SYSTEMD_READY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @device_is_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_is_ready(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @assert(i32* %5)
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @device_is_renaming(i32* %7)
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @sd_device_get_property_value(i32* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %4)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %21

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @parse_boolean(i8* %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %16, %15, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @device_is_renaming(i32*) #1

declare dso_local i64 @sd_device_get_property_value(i32*, i8*, i8**) #1

declare dso_local i64 @parse_boolean(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
