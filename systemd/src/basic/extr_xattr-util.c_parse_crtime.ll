; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_xattr-util.c_parse_crtime.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_xattr-util.c_parse_crtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*)* @parse_crtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_crtime(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %7 = load i64*, i64** %5, align 8
  %8 = call i32 @assert(i64* %7)
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @le64toh(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @IN_SET(i64 %11, i32 0, i64 -1)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = load i64*, i64** %5, align 8
  store i64 %18, i64* %19, align 8
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @assert(i64*) #1

declare dso_local i64 @le64toh(i32) #1

declare dso_local i64 @IN_SET(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
