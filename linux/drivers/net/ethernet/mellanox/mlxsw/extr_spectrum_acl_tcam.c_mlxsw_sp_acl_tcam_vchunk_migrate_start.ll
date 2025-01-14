; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vchunk_migrate_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vchunk_migrate_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_tcam_vchunk = type { %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk* }
%struct.mlxsw_sp_acl_tcam_chunk = type { i32 }
%struct.mlxsw_sp_acl_tcam_region = type { i32 }
%struct.mlxsw_sp_acl_tcam_rehash_ctx = type { i32*, i32*, %struct.mlxsw_sp_acl_tcam_vchunk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_rehash_ctx*)* @mlxsw_sp_acl_tcam_vchunk_migrate_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_tcam_vchunk_migrate_start(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_vchunk* %1, %struct.mlxsw_sp_acl_tcam_region* %2, %struct.mlxsw_sp_acl_tcam_rehash_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_vchunk*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_tcam_rehash_ctx*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_tcam_chunk*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_tcam_vchunk* %1, %struct.mlxsw_sp_acl_tcam_vchunk** %7, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %2, %struct.mlxsw_sp_acl_tcam_region** %8, align 8
  store %struct.mlxsw_sp_acl_tcam_rehash_ctx* %3, %struct.mlxsw_sp_acl_tcam_rehash_ctx** %9, align 8
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %12 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %7, align 8
  %13 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %8, align 8
  %14 = call %struct.mlxsw_sp_acl_tcam_chunk* @mlxsw_sp_acl_tcam_chunk_create(%struct.mlxsw_sp* %11, %struct.mlxsw_sp_acl_tcam_vchunk* %12, %struct.mlxsw_sp_acl_tcam_region* %13)
  store %struct.mlxsw_sp_acl_tcam_chunk* %14, %struct.mlxsw_sp_acl_tcam_chunk** %10, align 8
  %15 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %10, align 8
  %16 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_tcam_chunk* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %10, align 8
  %20 = call i32 @PTR_ERR(%struct.mlxsw_sp_acl_tcam_chunk* %19)
  store i32 %20, i32* %5, align 4
  br label %37

21:                                               ; preds = %4
  %22 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %7, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %22, i32 0, i32 0
  %24 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %23, align 8
  %25 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %7, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %25, i32 0, i32 1
  store %struct.mlxsw_sp_acl_tcam_chunk* %24, %struct.mlxsw_sp_acl_tcam_chunk** %26, align 8
  %27 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %10, align 8
  %28 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %7, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %28, i32 0, i32 0
  store %struct.mlxsw_sp_acl_tcam_chunk* %27, %struct.mlxsw_sp_acl_tcam_chunk** %29, align 8
  %30 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %7, align 8
  %31 = load %struct.mlxsw_sp_acl_tcam_rehash_ctx*, %struct.mlxsw_sp_acl_tcam_rehash_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_rehash_ctx, %struct.mlxsw_sp_acl_tcam_rehash_ctx* %31, i32 0, i32 2
  store %struct.mlxsw_sp_acl_tcam_vchunk* %30, %struct.mlxsw_sp_acl_tcam_vchunk** %32, align 8
  %33 = load %struct.mlxsw_sp_acl_tcam_rehash_ctx*, %struct.mlxsw_sp_acl_tcam_rehash_ctx** %9, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_rehash_ctx, %struct.mlxsw_sp_acl_tcam_rehash_ctx* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.mlxsw_sp_acl_tcam_rehash_ctx*, %struct.mlxsw_sp_acl_tcam_rehash_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_rehash_ctx, %struct.mlxsw_sp_acl_tcam_rehash_ctx* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %21, %18
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.mlxsw_sp_acl_tcam_chunk* @mlxsw_sp_acl_tcam_chunk_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_region*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_acl_tcam_chunk*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_acl_tcam_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
