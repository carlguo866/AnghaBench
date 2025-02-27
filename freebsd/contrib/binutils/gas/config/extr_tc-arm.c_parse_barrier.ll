; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_barrier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_barrier_opt = type { i32 }

@arm_barrier_opt_hsh = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @parse_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_barrier(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.asm_barrier_opt*, align 8
  store i8** %0, i8*** %3, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  store i8* %8, i8** %4, align 8
  br label %9

9:                                                ; preds = %14, %1
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = call i64 @ISALPHA(i8 signext %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  br label %9

17:                                               ; preds = %9
  %18 = load i32, i32* @arm_barrier_opt_hsh, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = call %struct.asm_barrier_opt* @hash_find_n(i32 %18, i8* %19, i32 %25)
  store %struct.asm_barrier_opt* %26, %struct.asm_barrier_opt** %6, align 8
  %27 = load %struct.asm_barrier_opt*, %struct.asm_barrier_opt** %6, align 8
  %28 = icmp ne %struct.asm_barrier_opt* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* @FAIL, align 4
  store i32 %30, i32* %2, align 4
  br label %37

31:                                               ; preds = %17
  %32 = load i8*, i8** %5, align 8
  %33 = load i8**, i8*** %3, align 8
  store i8* %32, i8** %33, align 8
  %34 = load %struct.asm_barrier_opt*, %struct.asm_barrier_opt** %6, align 8
  %35 = getelementptr inbounds %struct.asm_barrier_opt, %struct.asm_barrier_opt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %31, %29
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @ISALPHA(i8 signext) #1

declare dso_local %struct.asm_barrier_opt* @hash_find_n(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
