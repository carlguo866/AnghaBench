; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptsas.c_mptsas_sas_expander_pg1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptsas.c_mptsas_sas_expander_pg1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.mptsas_phyinfo = type { %struct.TYPE_17__, %struct.TYPE_16__, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i64, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32 }

@MPI_SASEXPANDER1_PAGEVERSION = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@MPI_CONFIG_EXTPAGETYPE_SAS_EXPANDER = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@SAS_CONFIG_PAGE_TIMEOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_CONFIG_INVALID_PAGE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.mptsas_phyinfo*, i64, i64)* @mptsas_sas_expander_pg1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptsas_sas_expander_pg1(%struct.TYPE_19__* %0, %struct.mptsas_phyinfo* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.mptsas_phyinfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_20__, align 8
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.mptsas_phyinfo* %1, %struct.mptsas_phyinfo** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @MPI_SASEXPANDER1_PAGEVERSION, align 4
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 6
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @MPI_CONFIG_PAGETYPE_EXTENDED, align 4
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @MPI_CONFIG_EXTPAGETYPE_SAS_EXPANDER, align 4
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 %27, %28
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 4
  store i64 %29, i64* %30, align 8
  %31 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @SAS_CONFIG_PAGE_TIMEOUT, align 4
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %37 = call i32 @mpt_config(%struct.TYPE_19__* %36, %struct.TYPE_21__* %10)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  br label %131

41:                                               ; preds = %4
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @ENXIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  br label %131

48:                                               ; preds = %41
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %53, 4
  %55 = call %struct.TYPE_18__* @pci_alloc_consistent(i32 %51, i32 %54, i32* %12)
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %11, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %57 = icmp ne %struct.TYPE_18__* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  br label %131

61:                                               ; preds = %48
  %62 = load i32, i32* %12, align 4
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = call i32 @mpt_config(%struct.TYPE_19__* %66, %struct.TYPE_21__* %10)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @MPI_IOCSTATUS_CONFIG_INVALID_PAGE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  br label %121

74:                                               ; preds = %61
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %121

78:                                               ; preds = %74
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %81 = call i32 @mptsas_print_expander_pg1(%struct.TYPE_19__* %79, %struct.TYPE_18__* %80)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %6, align 8
  %86 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %6, align 8
  %91 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %6, align 8
  %96 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %6, align 8
  %101 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %6, align 8
  %106 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @le16_to_cpu(i32 %109)
  %111 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %6, align 8
  %112 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  store i8* %110, i8** %113, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @le16_to_cpu(i32 %116)
  %118 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %6, align 8
  %119 = getelementptr inbounds %struct.mptsas_phyinfo, %struct.mptsas_phyinfo* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  store i8* %117, i8** %120, align 8
  br label %121

121:                                              ; preds = %78, %77, %71
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %126, 4
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @pci_free_consistent(i32 %124, i32 %127, %struct.TYPE_18__* %128, i32 %129)
  br label %131

131:                                              ; preds = %121, %58, %45, %40
  %132 = load i32, i32* %13, align 4
  ret i32 %132
}

declare dso_local i32 @mpt_config(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_18__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @mptsas_print_expander_pg1(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
