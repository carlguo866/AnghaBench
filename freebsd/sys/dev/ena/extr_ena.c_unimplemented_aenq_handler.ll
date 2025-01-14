; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_unimplemented_aenq_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_unimplemented_aenq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_admin_aenq_entry = type { i32 }
%struct.ena_adapter = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"Unknown event was received or event with unimplemented handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ena_admin_aenq_entry*)* @unimplemented_aenq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unimplemented_aenq_handler(i8* %0, %struct.ena_admin_aenq_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ena_admin_aenq_entry*, align 8
  %5 = alloca %struct.ena_adapter*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ena_admin_aenq_entry* %1, %struct.ena_admin_aenq_entry** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ena_adapter*
  store %struct.ena_adapter* %7, %struct.ena_adapter** %5, align 8
  %8 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %9 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @device_printf(i32 %10, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
