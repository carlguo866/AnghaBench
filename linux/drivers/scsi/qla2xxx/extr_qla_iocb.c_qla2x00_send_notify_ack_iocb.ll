; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_send_notify_ack_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_send_notify_ack_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.imm_ntfy_from_isp* }
%struct.imm_ntfy_from_isp = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nack_to_isp = type { i32, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NOTIFY_ACK_TYPE = common dso_local global i32 0, align 4
@IMM_NTFY_ELS = common dso_local global i64 0, align 8
@NOTIFY24XX_FLAGS_PUREX_IOCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.nack_to_isp*)* @qla2x00_send_notify_ack_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_send_notify_ack_iocb(%struct.TYPE_19__* %0, %struct.nack_to_isp* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.nack_to_isp*, align 8
  %5 = alloca %struct.imm_ntfy_from_isp*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.nack_to_isp* %1, %struct.nack_to_isp** %4, align 8
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %11, align 8
  store %struct.imm_ntfy_from_isp* %12, %struct.imm_ntfy_from_isp** %5, align 8
  %13 = load i32, i32* @NOTIFY_ACK_TYPE, align 4
  %14 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %15 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %17 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %5, align 8
  %19 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %22 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %27 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 13
  store i32 %25, i32* %29, align 8
  %30 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %5, align 8
  %31 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %36 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 12
  store i32 %34, i32* %38, align 4
  %39 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %5, align 8
  %40 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le16_to_cpu(i32 %43)
  %45 = load i64, i64* @IMM_NTFY_ELS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %2
  %48 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %5, align 8
  %49 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NOTIFY24XX_FLAGS_PUREX_IOCB, align 4
  %54 = call i32 @cpu_to_le32(i32 %53)
  %55 = and i32 %52, %54
  %56 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %57 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  br label %60

60:                                               ; preds = %47, %2
  %61 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %5, align 8
  %62 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %67 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 11
  store i32 %65, i32* %69, align 8
  %70 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %5, align 8
  %71 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %76 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 10
  store i32 %74, i32* %78, align 4
  %79 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %5, align 8
  %80 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %85 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 9
  store i32 %83, i32* %87, align 8
  %88 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %5, align 8
  %89 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %94 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 8
  store i32 %92, i32* %96, align 4
  %97 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %5, align 8
  %98 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %103 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 7
  store i32 %101, i32* %105, align 8
  %106 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %5, align 8
  %107 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %112 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 6
  store i32 %110, i32* %114, align 4
  %115 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %5, align 8
  %116 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %121 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 5
  store i32 %119, i32* %123, align 8
  %124 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %125 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 4
  store i64 0, i64* %127, align 8
  %128 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %129 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %133 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  store i64 0, i64* %135, align 8
  %136 = load %struct.imm_ntfy_from_isp*, %struct.imm_ntfy_from_isp** %5, align 8
  %137 = getelementptr inbounds %struct.imm_ntfy_from_isp, %struct.imm_ntfy_from_isp* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.nack_to_isp*, %struct.nack_to_isp** %4, align 8
  %142 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  store i32 %140, i32* %144, align 4
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
