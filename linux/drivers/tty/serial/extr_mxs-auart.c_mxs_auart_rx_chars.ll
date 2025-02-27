; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_auart_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@REG_STAT = common dso_local global i32 0, align 4
@AUART_STAT_RXFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_auart_port*)* @mxs_auart_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_auart_rx_chars(%struct.mxs_auart_port* %0) #0 {
  %2 = alloca %struct.mxs_auart_port*, align 8
  %3 = alloca i32, align 4
  store %struct.mxs_auart_port* %0, %struct.mxs_auart_port** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %13, %1
  %5 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %6 = load i32, i32* @REG_STAT, align 4
  %7 = call i32 @mxs_read(%struct.mxs_auart_port* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @AUART_STAT_RXFE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %16

13:                                               ; preds = %4
  %14 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %15 = call i32 @mxs_auart_rx_char(%struct.mxs_auart_port* %14)
  br label %4

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %19 = load i32, i32* @REG_STAT, align 4
  %20 = call i32 @mxs_write(i32 %17, %struct.mxs_auart_port* %18, i32 %19)
  %21 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %22 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @tty_flip_buffer_push(i32* %25)
  ret void
}

declare dso_local i32 @mxs_read(%struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mxs_auart_rx_char(%struct.mxs_auart_port*) #1

declare dso_local i32 @mxs_write(i32, %struct.mxs_auart_port*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
