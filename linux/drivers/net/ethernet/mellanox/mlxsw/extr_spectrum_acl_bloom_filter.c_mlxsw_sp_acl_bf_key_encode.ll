; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_bloom_filter.c_mlxsw_sp_acl_bf_key_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_bloom_filter.c_mlxsw_sp_acl_bf_key_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_atcam_region = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.mlxsw_afk_key_info* }
%struct.mlxsw_afk_key_info = type { i32 }
%struct.mlxsw_sp_acl_atcam_entry = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MLXSW_BLOOM_KEY_CHUNKS = common dso_local global i32 0, align 4
@MLXSW_BLOOM_CHUNK_PAD_BYTES = common dso_local global i32 0, align 4
@MLXSW_BLOOM_CHUNK_KEY_OFFSET = common dso_local global i32 0, align 4
@chunk_key_offsets = common dso_local global i64* null, align 8
@MLXSW_BLOOM_CHUNK_KEY_BYTES = common dso_local global i32 0, align 4
@MLXSW_BLOOM_KEY_CHUNK_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_entry*, i8*, i32*)* @mlxsw_sp_acl_bf_key_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_bf_key_encode(%struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_entry* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_atcam_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mlxsw_afk_key_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_atcam_region* %0, %struct.mlxsw_sp_acl_atcam_region** %5, align 8
  store %struct.mlxsw_sp_acl_atcam_entry* %1, %struct.mlxsw_sp_acl_atcam_entry** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %18, align 8
  store %struct.mlxsw_afk_key_info* %19, %struct.mlxsw_afk_key_info** %9, align 8
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %13, align 8
  %21 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %9, align 8
  %22 = call i32 @mlxsw_afk_key_info_blocks_count_get(%struct.mlxsw_afk_key_info* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = sub nsw i32 %23, 1
  %25 = ashr i32 %24, 2
  %26 = add nsw i32 1, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %6, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %5, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %35, 4
  %37 = or i32 %30, %36
  %38 = call i32 @cpu_to_be16(i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* @MLXSW_BLOOM_KEY_CHUNKS, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %74, %4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @MLXSW_BLOOM_KEY_CHUNKS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* @MLXSW_BLOOM_CHUNK_PAD_BYTES, align 4
  %49 = call i32 @memset(i8* %47, i32 0, i32 %48)
  %50 = load i8*, i8** %13, align 8
  %51 = load i32, i32* @MLXSW_BLOOM_CHUNK_PAD_BYTES, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = call i32 @memcpy(i8* %53, i32* %14, i32 4)
  %55 = load i8*, i8** %13, align 8
  %56 = load i32, i32* @MLXSW_BLOOM_CHUNK_KEY_OFFSET, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %6, align 8
  %60 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64*, i64** @chunk_key_offsets, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  %68 = load i32, i32* @MLXSW_BLOOM_CHUNK_KEY_BYTES, align 4
  %69 = call i32 @memcpy(i8* %58, i32* %67, i32 %68)
  %70 = load i32, i32* @MLXSW_BLOOM_KEY_CHUNK_BYTES, align 4
  %71 = load i8*, i8** %13, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %13, align 8
  br label %74

74:                                               ; preds = %46
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %42

77:                                               ; preds = %42
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @MLXSW_BLOOM_KEY_CHUNK_BYTES, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32*, i32** %8, align 8
  store i32 %80, i32* %81, align 4
  ret void
}

declare dso_local i32 @mlxsw_afk_key_info_blocks_count_get(%struct.mlxsw_afk_key_info*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
