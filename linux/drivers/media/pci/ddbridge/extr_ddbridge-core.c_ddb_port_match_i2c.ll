; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_port_match_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_port_match_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_port = type { i64, i64, %struct.TYPE_2__*, %struct.ddb* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ddb = type { i64, %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_port*)* @ddb_port_match_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddb_port_match_i2c(%struct.ddb_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb_port*, align 8
  %4 = alloca %struct.ddb*, align 8
  %5 = alloca i64, align 8
  store %struct.ddb_port* %0, %struct.ddb_port** %3, align 8
  %6 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %7 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %6, i32 0, i32 3
  %8 = load %struct.ddb*, %struct.ddb** %7, align 8
  store %struct.ddb* %8, %struct.ddb** %4, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %48, %1
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.ddb*, %struct.ddb** %4, align 8
  %12 = getelementptr inbounds %struct.ddb, %struct.ddb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %9
  %16 = load %struct.ddb*, %struct.ddb** %4, align 8
  %17 = getelementptr inbounds %struct.ddb, %struct.ddb* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %24 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %15
  %28 = load %struct.ddb*, %struct.ddb** %4, align 8
  %29 = getelementptr inbounds %struct.ddb, %struct.ddb* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %36 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load %struct.ddb*, %struct.ddb** %4, align 8
  %41 = getelementptr inbounds %struct.ddb, %struct.ddb* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %46 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %45, i32 0, i32 2
  store %struct.TYPE_2__* %44, %struct.TYPE_2__** %46, align 8
  store i32 1, i32* %2, align 4
  br label %52

47:                                               ; preds = %27, %15
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %5, align 8
  br label %9

51:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
