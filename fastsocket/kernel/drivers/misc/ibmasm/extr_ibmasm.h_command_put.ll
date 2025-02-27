; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_ibmasm.h_command_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_ibmasm.h_command_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32, i32* }

@ibmasm_free_command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.command*)* @command_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_put(%struct.command* %0) #0 {
  %2 = alloca %struct.command*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store %struct.command* %0, %struct.command** %2, align 8
  %5 = load %struct.command*, %struct.command** %2, align 8
  %6 = getelementptr inbounds %struct.command, %struct.command* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.command*, %struct.command** %2, align 8
  %12 = getelementptr inbounds %struct.command, %struct.command* %11, i32 0, i32 0
  %13 = load i32, i32* @ibmasm_free_command, align 4
  %14 = call i32 @kref_put(i32* %12, i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
