; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_scan_NotifyService.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_scan_NotifyService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_7__*, i32, %struct.TYPE_8__*, i32, i32)* }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, i32)* @scan_NotifyService to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_NotifyService(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load i32 (%struct.TYPE_7__*, i32, %struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, %struct.TYPE_8__*, i32, i32)** %8, align 8
  %10 = icmp ne i32 (%struct.TYPE_7__*, i32, %struct.TYPE_8__*, i32, i32)* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @scan_service_type_Supported(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11, %3
  br label %34

18:                                               ; preds = %11
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32 (%struct.TYPE_7__*, i32, %struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, %struct.TYPE_8__*, i32, i32)** %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 %21(%struct.TYPE_7__* %22, i32 %25, %struct.TYPE_8__* %26, i32 %29, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @scan_service_type_Supported(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
