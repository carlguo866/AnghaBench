; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_int.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.bstr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, i32*, i32, i32, i8*)* @parse_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_int(%struct.mp_log* %0, i32* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.bstr, align 4
  %7 = alloca %struct.bstr, align 4
  %8 = alloca %struct.mp_log*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  %14 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store %struct.mp_log* %0, %struct.mp_log** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @parse_longlong(%struct.mp_log* %15, i32* %16, i32 %18, i32 %20, i64* %11)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %5
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i64, i64* %11, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i8*, i8** %10, align 8
  %31 = bitcast i8* %30 to i32*
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %24, %5
  %33 = load i32, i32* %12, align 4
  ret i32 %33
}

declare dso_local i32 @parse_longlong(%struct.mp_log*, i32*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
