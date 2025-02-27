; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_admin_aenq_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_admin_aenq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"Invalid AENQ state\0A\00", align 1
@ENA_REGS_AENQ_HEAD_DB_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_com_admin_aenq_enable(%struct.ena_com_dev* %0) #0 {
  %2 = alloca %struct.ena_com_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %2, align 8
  %4 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %5 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %9 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ENA_WARN(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %17 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %21 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ENA_REGS_AENQ_HEAD_DB_OFF, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @ENA_REG_WRITE32(i32 %18, i64 %19, i64 %24)
  ret void
}

declare dso_local i32 @ENA_WARN(i32, i8*) #1

declare dso_local i32 @ENA_REG_WRITE32(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
