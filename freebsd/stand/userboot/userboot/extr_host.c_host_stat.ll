; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_host.c_host_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_host.c_host_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32 }
%struct.stat = type { i32, i32, i32, i32 }

@stat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, %struct.stat*)* @host_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host_stat(%struct.open_file* %0, %struct.stat* %1) #0 {
  %3 = alloca %struct.open_file*, align 8
  %4 = alloca %struct.stat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %9 = load i32, i32* @stat, align 4
  %10 = load %struct.open_file*, %struct.open_file** %3, align 8
  %11 = getelementptr inbounds %struct.open_file, %struct.open_file* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CALLBACK(i32 %9, i32 %12, i32* %5, i32* %6, i32* %7, i32* %8)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.stat*, %struct.stat** %4, align 8
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.stat*, %struct.stat** %4, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.stat*, %struct.stat** %4, align 8
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.stat*, %struct.stat** %4, align 8
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  ret i32 0
}

declare dso_local i32 @CALLBACK(i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
