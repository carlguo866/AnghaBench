; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-ipc.c_skl_ipc_get_large_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-ipc.c_skl_ipc_get_large_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_generic_ipc = type { i32 }
%struct.skl_ipc_large_config_msg = type { i32, i32, i32, i32 }
%struct.skl_ipc_header = type { i32, i32, i32 }
%struct.sst_ipc_message = type { i32*, i32, i64, i32 }

@SKL_ADSP_W1_SZ = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPC_MOD_MSG = common dso_local global i32 0, align 4
@IPC_MSG_REQUEST = common dso_local global i32 0, align 4
@IPC_MOD_LARGE_CONFIG_GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ipc: get large config fail, err: %d\0A\00", align 1
@IPC_DATA_OFFSET_SZ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_ipc_get_large_config(%struct.sst_generic_ipc* %0, %struct.skl_ipc_large_config_msg* %1, i32** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sst_generic_ipc*, align 8
  %7 = alloca %struct.skl_ipc_large_config_msg*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.skl_ipc_header, align 4
  %11 = alloca %struct.sst_ipc_message, align 8
  %12 = alloca %struct.sst_ipc_message, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.sst_generic_ipc* %0, %struct.sst_generic_ipc** %6, align 8
  store %struct.skl_ipc_large_config_msg* %1, %struct.skl_ipc_large_config_msg** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = bitcast %struct.skl_ipc_header* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 12, i1 false)
  %16 = bitcast %struct.sst_ipc_message* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load i64, i64* @SKL_ADSP_W1_SZ, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @kzalloc(i64 %17, i32 %18)
  %20 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %12, i32 0, i32 0
  store i32* %19, i32** %20, align 8
  %21 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %12, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %123

27:                                               ; preds = %4
  %28 = load i32, i32* @IPC_MOD_MSG, align 4
  %29 = call i32 @IPC_MSG_TARGET(i32 %28)
  %30 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %10, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @IPC_MSG_REQUEST, align 4
  %32 = call i32 @IPC_MSG_DIR(i32 %31)
  %33 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %10, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @IPC_MOD_LARGE_CONFIG_GET, align 4
  %37 = call i32 @IPC_GLB_TYPE(i32 %36)
  %38 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %10, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  %41 = load %struct.skl_ipc_large_config_msg*, %struct.skl_ipc_large_config_msg** %7, align 8
  %42 = getelementptr inbounds %struct.skl_ipc_large_config_msg, %struct.skl_ipc_large_config_msg* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @IPC_MOD_INSTANCE_ID(i32 %43)
  %45 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %10, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load %struct.skl_ipc_large_config_msg*, %struct.skl_ipc_large_config_msg** %7, align 8
  %49 = getelementptr inbounds %struct.skl_ipc_large_config_msg, %struct.skl_ipc_large_config_msg* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @IPC_MOD_ID(i32 %50)
  %52 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load %struct.skl_ipc_large_config_msg*, %struct.skl_ipc_large_config_msg** %7, align 8
  %56 = getelementptr inbounds %struct.skl_ipc_large_config_msg, %struct.skl_ipc_large_config_msg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @IPC_DATA_OFFSET_SZ(i32 %57)
  %59 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %10, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.skl_ipc_large_config_msg*, %struct.skl_ipc_large_config_msg** %7, align 8
  %61 = getelementptr inbounds %struct.skl_ipc_large_config_msg, %struct.skl_ipc_large_config_msg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IPC_LARGE_PARAM_ID(i32 %62)
  %64 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %10, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  %67 = call i32 @IPC_FINAL_BLOCK(i32 1)
  %68 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = call i32 @IPC_INITIAL_BLOCK(i32 1)
  %72 = getelementptr inbounds %struct.skl_ipc_header, %struct.skl_ipc_header* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  %75 = bitcast %struct.skl_ipc_header* %10 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %11, i32 0, i32 1
  store i32 %76, i32* %77, align 8
  %78 = load i32**, i32*** %8, align 8
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %11, i32 0, i32 0
  store i32* %79, i32** %80, align 8
  %81 = load i64*, i64** %9, align 8
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %11, i32 0, i32 2
  store i64 %82, i64* %83, align 8
  %84 = load i64, i64* @SKL_ADSP_W1_SZ, align 8
  %85 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %12, i32 0, i32 2
  store i64 %84, i64* %85, align 8
  %86 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %6, align 8
  %87 = call i32 @sst_ipc_tx_message_wait(%struct.sst_generic_ipc* %86, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8 %11, %struct.sst_ipc_message* %12)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %27
  %91 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %6, align 8
  %92 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %27
  %97 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %12, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = ashr i32 %98, 32
  %100 = load i32, i32* @IPC_DATA_OFFSET_SZ_MASK, align 4
  %101 = and i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %12, i32 0, i32 2
  store i64 %102, i64* %103, align 8
  %104 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %12, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %12, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i32* @krealloc(i32* %105, i32 %108, i32 %109)
  store i32* %110, i32** %13, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %96
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %123

116:                                              ; preds = %96
  %117 = load i32*, i32** %13, align 8
  %118 = load i32**, i32*** %8, align 8
  store i32* %117, i32** %118, align 8
  %119 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %12, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64*, i64** %9, align 8
  store i64 %120, i64* %121, align 8
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %116, %113, %24
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @kzalloc(i64, i32) #2

declare dso_local i32 @IPC_MSG_TARGET(i32) #2

declare dso_local i32 @IPC_MSG_DIR(i32) #2

declare dso_local i32 @IPC_GLB_TYPE(i32) #2

declare dso_local i32 @IPC_MOD_INSTANCE_ID(i32) #2

declare dso_local i32 @IPC_MOD_ID(i32) #2

declare dso_local i32 @IPC_DATA_OFFSET_SZ(i32) #2

declare dso_local i32 @IPC_LARGE_PARAM_ID(i32) #2

declare dso_local i32 @IPC_FINAL_BLOCK(i32) #2

declare dso_local i32 @IPC_INITIAL_BLOCK(i32) #2

declare dso_local i32 @sst_ipc_tx_message_wait(%struct.sst_generic_ipc*, %struct.sst_ipc_message* byval(%struct.sst_ipc_message) align 8, %struct.sst_ipc_message*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32* @krealloc(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
