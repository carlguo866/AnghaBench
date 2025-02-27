; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_vsprintf.c_format_flags.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_vsprintf.c_format_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_print_flags = type { i64, i64 }

@default_str_spec = common dso_local global i32 0, align 4
@default_flag_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64, %struct.trace_print_flags*)* @format_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_flags(i8* %0, i8* %1, i64 %2, %struct.trace_print_flags* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.trace_print_flags*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.trace_print_flags* %3, %struct.trace_print_flags** %8, align 8
  br label %10

10:                                               ; preds = %54, %4
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.trace_print_flags*, %struct.trace_print_flags** %8, align 8
  %15 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %57

20:                                               ; preds = %18
  %21 = load %struct.trace_print_flags*, %struct.trace_print_flags** %8, align 8
  %22 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = and i64 %24, %25
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %54

30:                                               ; preds = %20
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.trace_print_flags*, %struct.trace_print_flags** %8, align 8
  %34 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @default_str_spec, align 4
  %37 = call i8* @string(i8* %31, i8* %32, i64 %35, i32 %36)
  store i8* %37, i8** %5, align 8
  %38 = load i64, i64* %9, align 8
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %7, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %30
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ult i8* %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  store i8 124, i8* %49, align 1
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  br label %53

53:                                               ; preds = %50, %30
  br label %54

54:                                               ; preds = %53, %29
  %55 = load %struct.trace_print_flags*, %struct.trace_print_flags** %8, align 8
  %56 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %55, i32 1
  store %struct.trace_print_flags* %56, %struct.trace_print_flags** %8, align 8
  br label %10

57:                                               ; preds = %18
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* @default_flag_spec, align 4
  %65 = call i8* @number(i8* %61, i8* %62, i64 %63, i32 %64)
  store i8* %65, i8** %5, align 8
  br label %66

66:                                               ; preds = %60, %57
  %67 = load i8*, i8** %5, align 8
  ret i8* %67
}

declare dso_local i8* @string(i8*, i8*, i64, i32) #1

declare dso_local i8* @number(i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
