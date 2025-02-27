; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_memif_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_port_memif_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_ports = type { i32 }
%struct.bridge_port = type { i32 }

@b_p = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bridge_ports*, %struct.bridge_port*, %struct.bridge_port**)* @bridge_port_memif_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_port_memif_insert(%struct.bridge_ports* %0, %struct.bridge_port* %1, %struct.bridge_port** %2) #0 {
  %4 = alloca %struct.bridge_ports*, align 8
  %5 = alloca %struct.bridge_port*, align 8
  %6 = alloca %struct.bridge_port**, align 8
  %7 = alloca %struct.bridge_port*, align 8
  store %struct.bridge_ports* %0, %struct.bridge_ports** %4, align 8
  store %struct.bridge_port* %1, %struct.bridge_port** %5, align 8
  store %struct.bridge_port** %2, %struct.bridge_port*** %6, align 8
  %8 = load %struct.bridge_port**, %struct.bridge_port*** %6, align 8
  %9 = load %struct.bridge_port*, %struct.bridge_port** %8, align 8
  %10 = icmp ne %struct.bridge_port* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.bridge_ports*, %struct.bridge_ports** %4, align 8
  %13 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %14 = load %struct.bridge_port**, %struct.bridge_port*** %6, align 8
  %15 = call i32 @bridge_port_insert_at(%struct.bridge_ports* %12, %struct.bridge_port* %13, %struct.bridge_port** %14)
  br label %38

16:                                               ; preds = %3
  %17 = load %struct.bridge_ports*, %struct.bridge_ports** %4, align 8
  %18 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %19 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.bridge_port* @bridge_port_find_pos(%struct.bridge_ports* %17, i32 %20)
  store %struct.bridge_port* %21, %struct.bridge_port** %7, align 8
  %22 = load %struct.bridge_port*, %struct.bridge_port** %7, align 8
  %23 = icmp eq %struct.bridge_port* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.bridge_ports*, %struct.bridge_ports** %4, align 8
  %26 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %27 = load i32, i32* @b_p, align 4
  %28 = call i32 @TAILQ_INSERT_HEAD(%struct.bridge_ports* %25, %struct.bridge_port* %26, i32 %27)
  br label %35

29:                                               ; preds = %16
  %30 = load %struct.bridge_ports*, %struct.bridge_ports** %4, align 8
  %31 = load %struct.bridge_port*, %struct.bridge_port** %7, align 8
  %32 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %33 = load i32, i32* @b_p, align 4
  %34 = call i32 @TAILQ_INSERT_AFTER(%struct.bridge_ports* %30, %struct.bridge_port* %31, %struct.bridge_port* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.bridge_port*, %struct.bridge_port** %5, align 8
  %37 = load %struct.bridge_port**, %struct.bridge_port*** %6, align 8
  store %struct.bridge_port* %36, %struct.bridge_port** %37, align 8
  br label %38

38:                                               ; preds = %35, %11
  ret void
}

declare dso_local i32 @bridge_port_insert_at(%struct.bridge_ports*, %struct.bridge_port*, %struct.bridge_port**) #1

declare dso_local %struct.bridge_port* @bridge_port_find_pos(%struct.bridge_ports*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(%struct.bridge_ports*, %struct.bridge_port*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(%struct.bridge_ports*, %struct.bridge_port*, %struct.bridge_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
