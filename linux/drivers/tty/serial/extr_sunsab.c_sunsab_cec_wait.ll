; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsab.c_sunsab_cec_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsab.c_sunsab_cec_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsab_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SAB82532_STAR_CEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sunsab_port*)* @sunsab_cec_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunsab_cec_wait(%struct.uart_sunsab_port* %0) #0 {
  %2 = alloca %struct.uart_sunsab_port*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_sunsab_port* %0, %struct.uart_sunsab_port** %2, align 8
  %4 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @readb(i32* %12)
  %14 = load i32, i32* @SAB82532_STAR_CEC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %17, %7
  %22 = phi i1 [ false, %7 ], [ %20, %17 ]
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = call i32 @udelay(i32 1)
  br label %7

25:                                               ; preds = %21
  ret void
}

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
