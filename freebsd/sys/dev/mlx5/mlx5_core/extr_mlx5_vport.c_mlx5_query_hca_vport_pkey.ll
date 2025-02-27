; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_query_hca_vport_pkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_query_hca_vport_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@query_hca_vport_pkey_in = common dso_local global i32* null, align 8
@query_hca_vport_pkey_out = common dso_local global i32* null, align 8
@vport_group_manager = common dso_local global i32 0, align 4
@pkey_table_size = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_QUERY_HCA_VPORT_PKEY = common dso_local global i32 0, align 4
@vport_number = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@num_ports = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_hca_vport_pkey(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %24 = load i32*, i32** @query_hca_vport_pkey_in, align 8
  %25 = call i32 @MLX5_ST_SZ_BYTES(i32* %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32*, i32** @query_hca_vport_pkey_out, align 8
  %27 = call i32 @MLX5_ST_SZ_BYTES(i32* %26)
  store i32 %27, i32* %15, align 4
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %29 = load i32, i32* @vport_group_manager, align 4
  %30 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %28, i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %32 = load i32, i32* @pkey_table_size, align 4
  %33 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %31, i32 %32)
  %34 = call i32 @mlx5_to_sw_pkey_sz(i32 %33)
  store i32 %34, i32* %21, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %21, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %6
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 65535
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %145

44:                                               ; preds = %38, %6
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 65535
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %21, align 4
  store i32 %48, i32* %20, align 4
  br label %50

49:                                               ; preds = %44
  store i32 1, i32* %20, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i32, i32* %20, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @MLX5_ST_SZ_BYTES(i32* %52)
  %54 = mul nsw i32 %51, %53
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @kzalloc(i32 %57, i32 %58)
  store i8* %59, i8** %18, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kzalloc(i32 %60, i32 %61)
  store i8* %62, i8** %17, align 8
  %63 = load i32*, i32** @query_hca_vport_pkey_in, align 8
  %64 = load i8*, i8** %18, align 8
  %65 = load i32, i32* @opcode, align 4
  %66 = load i32, i32* @MLX5_CMD_OP_QUERY_HCA_VPORT_PKEY, align 4
  %67 = call i32 @MLX5_SET(i32* %63, i8* %64, i32 %65, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %50
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i32*, i32** @query_hca_vport_pkey_in, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = load i32, i32* @vport_number, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @MLX5_SET(i32* %74, i8* %75, i32 %76, i32 %77)
  %79 = load i32*, i32** @query_hca_vport_pkey_in, align 8
  %80 = load i8*, i8** %18, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @MLX5_SET(i32* %79, i8* %80, i32 %81, i32 1)
  br label %86

83:                                               ; preds = %70
  %84 = load i32, i32* @EPERM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %22, align 4
  br label %139

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %50
  %88 = load i32*, i32** @query_hca_vport_pkey_in, align 8
  %89 = load i8*, i8** %18, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @MLX5_SET(i32* %88, i8* %89, i32 %90, i32 %91)
  %93 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %94 = load i32, i32* @num_ports, align 4
  %95 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %93, i32 %94)
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load i32*, i32** @query_hca_vport_pkey_in, align 8
  %99 = load i8*, i8** %18, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @MLX5_SET(i32* %98, i8* %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %97, %87
  %104 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %105 = load i8*, i8** %18, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load i8*, i8** %17, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %104, i8* %105, i32 %106, i8* %107, i32 %108)
  store i32 %109, i32* %22, align 4
  %110 = load i32, i32* %22, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %139

113:                                              ; preds = %103
  %114 = load i32*, i32** @query_hca_vport_pkey_out, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = load i32*, i32** %13, align 8
  %117 = call i8* @MLX5_ADDR_OF(i32* %114, i8* %115, i32* %116)
  store i8* %117, i8** %19, align 8
  store i32 0, i32* %23, align 4
  br label %118

118:                                              ; preds = %128, %113
  %119 = load i32, i32* %23, align 4
  %120 = load i32, i32* %20, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %118
  %123 = load i32*, i32** %13, align 8
  %124 = load i8*, i8** %19, align 8
  %125 = load i32*, i32** %13, align 8
  %126 = call i32 @MLX5_GET_PR(i32* %123, i8* %124, i32* %125)
  %127 = load i32*, i32** %13, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %122
  %129 = load i32, i32* %23, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %23, align 4
  %131 = load i32*, i32** %13, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %13, align 8
  %133 = load i32*, i32** %13, align 8
  %134 = call i32 @MLX5_ST_SZ_BYTES(i32* %133)
  %135 = load i8*, i8** %19, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr i8, i8* %135, i64 %136
  store i8* %137, i8** %19, align 8
  br label %118

138:                                              ; preds = %118
  br label %139

139:                                              ; preds = %138, %112, %83
  %140 = load i8*, i8** %18, align 8
  %141 = call i32 @kfree(i8* %140)
  %142 = load i8*, i8** %17, align 8
  %143 = call i32 @kfree(i8* %142)
  %144 = load i32, i32* %22, align 4
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %139, %41
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32*) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_to_sw_pkey_sz(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i8*, i32, i8*, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32*, i8*, i32*) #1

declare dso_local i32 @MLX5_GET_PR(i32*, i8*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
