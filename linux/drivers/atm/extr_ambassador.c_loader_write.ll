; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_loader_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_loader_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.ihex_binrec = type { i32, i32, i32 }

@DBG_FLOW = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"loader_write\00", align 1
@write_adapter_memory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, %struct.ihex_binrec*)* @loader_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loader_write(%struct.TYPE_8__* %0, i32* %1, %struct.ihex_binrec* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ihex_binrec*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ihex_binrec* %2, %struct.ihex_binrec** %6, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %7, align 8
  %11 = load i32, i32* @DBG_FLOW, align 4
  %12 = load i32, i32* @DBG_LOAD, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @PRINTD(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %16 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %21 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be16_to_cpu(i32 %22)
  %24 = sdiv i32 %23, 4
  %25 = call i32 @cpu_to_be32(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %32 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %35 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be16_to_cpu(i32 %36)
  %38 = call i32 @memcpy(i32 %30, i32 %33, i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @write_adapter_memory, align 4
  %42 = call i32 @do_loader_command(%struct.TYPE_8__* %39, i32* %40, i32 %41)
  ret i32 %42
}

declare dso_local i32 @PRINTD(i32, i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @do_loader_command(%struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
