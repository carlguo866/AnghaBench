; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_sym_elem_global.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_sym_elem_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*, i8*)* @sym_elem_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_elem_global(i8 signext %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8, i8* %4, align 1
  %8 = call i32 @IS_SYM_TYPE(i8 zeroext %7)
  %9 = call i32 @assert(i32 %8)
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @UNUSED(i8* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @UNUSED(i8* %12)
  %14 = load i8, i8* %4, align 1
  %15 = call i64 @isupper(i8 zeroext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i8, i8* %4, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 119
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i1 [ true, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IS_SYM_TYPE(i8 zeroext) #1

declare dso_local i32 @UNUSED(i8*) #1

declare dso_local i64 @isupper(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
