; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.h_m_option_parse.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.h_m_option_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }
%struct.bstr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.TYPE_6__*, i32, i32, i8*)* @m_option_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_option_parse(%struct.mp_log* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.bstr, align 4
  %7 = alloca %struct.bstr, align 4
  %8 = alloca %struct.mp_log*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  %12 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i32 %3, i32* %12, align 4
  store %struct.mp_log* %0, %struct.mp_log** %8, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.mp_log*, %struct.TYPE_6__*, i32, i32, i8*)**
  %18 = load i32 (%struct.mp_log*, %struct.TYPE_6__*, i32, i32, i8*)*, i32 (%struct.mp_log*, %struct.TYPE_6__*, i32, i32, i8*)** %17, align 8
  %19 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %18(%struct.mp_log* %19, %struct.TYPE_6__* %20, i32 %23, i32 %25, i8* %21)
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
