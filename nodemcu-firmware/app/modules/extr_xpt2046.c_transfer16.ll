; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_xpt2046.c_transfer16.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_xpt2046.c_transfer16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @transfer16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transfer16(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.anon, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = bitcast %union.anon* %3 to i32*
  store i32 %4, i32* %5, align 8
  %6 = bitcast %union.anon* %3 to %struct.anon*
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = call i8* @platform_spi_send_recv(i32 1, i32 8, i8* %8)
  %10 = bitcast %union.anon* %3 to %struct.anon*
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = bitcast %union.anon* %3 to %struct.anon*
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @platform_spi_send_recv(i32 1, i32 8, i8* %14)
  %16 = bitcast %union.anon* %3 to %struct.anon*
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = bitcast %union.anon* %3 to i32*
  %19 = load i32, i32* %18, align 8
  ret i32 %19
}

declare dso_local i8* @platform_spi_send_recv(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
