; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_aux.c_nvkm_i2c_aux_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_aux.c_nvkm_i2c_aux_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_aux = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"dtor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_i2c_aux_del(%struct.nvkm_i2c_aux** %0) #0 {
  %2 = alloca %struct.nvkm_i2c_aux**, align 8
  %3 = alloca %struct.nvkm_i2c_aux*, align 8
  store %struct.nvkm_i2c_aux** %0, %struct.nvkm_i2c_aux*** %2, align 8
  %4 = load %struct.nvkm_i2c_aux**, %struct.nvkm_i2c_aux*** %2, align 8
  %5 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %4, align 8
  store %struct.nvkm_i2c_aux* %5, %struct.nvkm_i2c_aux** %3, align 8
  %6 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %3, align 8
  %7 = icmp ne %struct.nvkm_i2c_aux* %6, null
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %8
  %18 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %3, align 8
  %19 = call i32 @AUX_TRACE(%struct.nvkm_i2c_aux* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %3, align 8
  %21 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %20, i32 0, i32 1
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %3, align 8
  %24 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %23, i32 0, i32 0
  %25 = call i32 @i2c_del_adapter(i32* %24)
  %26 = load %struct.nvkm_i2c_aux**, %struct.nvkm_i2c_aux*** %2, align 8
  %27 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %26, align 8
  %28 = call i32 @kfree(%struct.nvkm_i2c_aux* %27)
  %29 = load %struct.nvkm_i2c_aux**, %struct.nvkm_i2c_aux*** %2, align 8
  store %struct.nvkm_i2c_aux* null, %struct.nvkm_i2c_aux** %29, align 8
  br label %30

30:                                               ; preds = %17, %8, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @AUX_TRACE(%struct.nvkm_i2c_aux*, i8*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @kfree(%struct.nvkm_i2c_aux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
