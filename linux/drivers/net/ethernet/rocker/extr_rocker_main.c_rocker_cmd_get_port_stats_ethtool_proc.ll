; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_get_port_stats_ethtool_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_get_port_stats_ethtool_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.rocker_port = type { i64 }
%struct.rocker_desc_info = type { i32 }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_CMD_MAX = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_PORT_STATS_MAX = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_INFO = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_PORT_STATS_PPORT = common dso_local global i64 0, align 8
@rocker_port_stats = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.rocker_desc_info*, i8*)* @rocker_cmd_get_port_stats_ethtool_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_cmd_get_port_stats_ethtool_proc(%struct.rocker_port* %0, %struct.rocker_desc_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker_port*, align 8
  %6 = alloca %struct.rocker_desc_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rocker_tlv*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %5, align 8
  store %struct.rocker_desc_info* %1, %struct.rocker_desc_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i32, i32* @ROCKER_TLV_CMD_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca %struct.rocker_tlv*, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @ROCKER_TLV_CMD_PORT_STATS_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = alloca %struct.rocker_tlv*, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %13, align 8
  %27 = load i32, i32* @ROCKER_TLV_CMD_MAX, align 4
  %28 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %29 = call i32 @rocker_tlv_parse_desc(%struct.rocker_tlv** %20, i32 %27, %struct.rocker_desc_info* %28)
  %30 = load i64, i64* @ROCKER_TLV_CMD_INFO, align 8
  %31 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %20, i64 %30
  %32 = load %struct.rocker_tlv*, %struct.rocker_tlv** %31, align 8
  %33 = icmp ne %struct.rocker_tlv* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %92

37:                                               ; preds = %3
  %38 = load i32, i32* @ROCKER_TLV_CMD_PORT_STATS_MAX, align 4
  %39 = load i64, i64* @ROCKER_TLV_CMD_INFO, align 8
  %40 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %20, i64 %39
  %41 = load %struct.rocker_tlv*, %struct.rocker_tlv** %40, align 8
  %42 = call i32 @rocker_tlv_parse_nested(%struct.rocker_tlv** %24, i32 %38, %struct.rocker_tlv* %41)
  %43 = load i64, i64* @ROCKER_TLV_CMD_PORT_STATS_PPORT, align 8
  %44 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %24, i64 %43
  %45 = load %struct.rocker_tlv*, %struct.rocker_tlv** %44, align 8
  %46 = icmp ne %struct.rocker_tlv* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %92

50:                                               ; preds = %37
  %51 = load i64, i64* @ROCKER_TLV_CMD_PORT_STATS_PPORT, align 8
  %52 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %24, i64 %51
  %53 = load %struct.rocker_tlv*, %struct.rocker_tlv** %52, align 8
  %54 = call i64 @rocker_tlv_get_u32(%struct.rocker_tlv* %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.rocker_port*, %struct.rocker_port** %5, align 8
  %57 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %92

63:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %88, %63
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rocker_port_stats, align 8
  %67 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %66)
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %64
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rocker_port_stats, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %24, i64 %75
  %77 = load %struct.rocker_tlv*, %struct.rocker_tlv** %76, align 8
  store %struct.rocker_tlv* %77, %struct.rocker_tlv** %11, align 8
  %78 = load %struct.rocker_tlv*, %struct.rocker_tlv** %11, align 8
  %79 = icmp ne %struct.rocker_tlv* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %69
  br label %88

81:                                               ; preds = %69
  %82 = load %struct.rocker_tlv*, %struct.rocker_tlv** %11, align 8
  %83 = call i32 @rocker_tlv_get_u64(%struct.rocker_tlv* %82)
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %81, %80
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %64

91:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %92

92:                                               ; preds = %91, %60, %47, %34
  %93 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rocker_tlv_parse_desc(%struct.rocker_tlv**, i32, %struct.rocker_desc_info*) #2

declare dso_local i32 @rocker_tlv_parse_nested(%struct.rocker_tlv**, i32, %struct.rocker_tlv*) #2

declare dso_local i64 @rocker_tlv_get_u32(%struct.rocker_tlv*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i32 @rocker_tlv_get_u64(%struct.rocker_tlv*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
