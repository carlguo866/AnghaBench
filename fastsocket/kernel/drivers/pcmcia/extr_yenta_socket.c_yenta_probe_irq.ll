; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_probe_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_probe_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yenta_socket = type { i32 }

@CB_SOCKET_EVENT = common dso_local global i32 0, align 4
@CB_SOCKET_MASK = common dso_local global i32 0, align 4
@CB_CSTSMASK = common dso_local global i32 0, align 4
@I365_CSCINT = common dso_local global i32 0, align 4
@I365_CSC_STSCHG = common dso_local global i32 0, align 4
@CB_SOCKET_FORCE = common dso_local global i32 0, align 4
@CB_FCARDSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.yenta_socket*, i32)* @yenta_probe_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yenta_probe_irq(%struct.yenta_socket* %0, i32 %1) #0 {
  %3 = alloca %struct.yenta_socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.yenta_socket* %0, %struct.yenta_socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %9 = load i32, i32* @CB_SOCKET_EVENT, align 4
  %10 = call i32 @cb_writel(%struct.yenta_socket* %8, i32 %9, i32 -1)
  %11 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %12 = load i32, i32* @CB_SOCKET_MASK, align 4
  %13 = load i32, i32* @CB_CSTSMASK, align 4
  %14 = call i32 @cb_writel(%struct.yenta_socket* %11, i32 %12, i32 %13)
  %15 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %16 = load i32, i32* @I365_CSCINT, align 4
  %17 = call i32 @exca_writeb(%struct.yenta_socket* %15, i32 %16, i32 0)
  %18 = call i32 (...) @probe_irq_on()
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %18, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %6, align 8
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %49, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 16
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = lshr i64 %26, %28
  %30 = and i64 %29, 1
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %49

33:                                               ; preds = %25
  %34 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %35 = load i32, i32* @I365_CSCINT, align 4
  %36 = load i32, i32* @I365_CSC_STSCHG, align 4
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 %37, 4
  %39 = or i32 %36, %38
  %40 = call i32 @exca_writeb(%struct.yenta_socket* %34, i32 %35, i32 %39)
  %41 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %42 = load i32, i32* @CB_SOCKET_FORCE, align 4
  %43 = load i32, i32* @CB_FCARDSTS, align 4
  %44 = call i32 @cb_writel(%struct.yenta_socket* %41, i32 %42, i32 %43)
  %45 = call i32 @udelay(i32 100)
  %46 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %47 = load i32, i32* @CB_SOCKET_EVENT, align 4
  %48 = call i32 @cb_writel(%struct.yenta_socket* %46, i32 %47, i32 -1)
  br label %49

49:                                               ; preds = %33, %32
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %22

52:                                               ; preds = %22
  %53 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %54 = load i32, i32* @CB_SOCKET_MASK, align 4
  %55 = call i32 @cb_writel(%struct.yenta_socket* %53, i32 %54, i32 0)
  %56 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %57 = load i32, i32* @I365_CSCINT, align 4
  %58 = call i32 @exca_writeb(%struct.yenta_socket* %56, i32 %57, i32 0)
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @probe_irq_mask(i64 %59)
  %61 = and i32 %60, 65535
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @cb_writel(%struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @exca_writeb(%struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @probe_irq_on(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @probe_irq_mask(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
