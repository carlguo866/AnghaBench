; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_indexindex.h_create_ce_mode.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_indexindex.h_create_ce_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IFLNK = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @create_ce_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_ce_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @S_ISLNK(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @S_IFLNK, align 4
  store i32 %8, i32* %2, align 4
  br label %20

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @S_ISDIR(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @S_IFDIR, align 4
  store i32 %14, i32* %2, align 4
  br label %20

15:                                               ; preds = %9
  %16 = load i32, i32* @S_IFREG, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ce_permissions(i32 %17)
  %19 = or i32 %16, %18
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %15, %13, %7
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @ce_permissions(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
