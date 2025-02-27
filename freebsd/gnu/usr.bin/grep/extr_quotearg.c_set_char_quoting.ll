; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_quotearg.c_set_char_quoting.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_quotearg.c_set_char_quoting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quoting_options = type { i32* }

@default_quoting_options = common dso_local global %struct.quoting_options zeroinitializer, align 8
@INT_BITS = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %11 = load i8, i8* %5, align 1
  store i8 %11, i8* %7, align 1
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  %13 = icmp ne %struct.quoting_options* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ]
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i8, i8* %7, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @INT_BITS, align 1
  %24 = zext i8 %23 to i32
  %25 = sdiv i32 %22, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %20, i64 %26
  store i32* %27, i32** %8, align 8
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @INT_BITS, align 1
  %31 = zext i8 %30 to i32
  %32 = srem i32 %29, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %34, %35
  %37 = and i32 %36, 1
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 1
  %40 = load i32, i32* %10, align 4
  %41 = xor i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 %41, %42
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %10, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
