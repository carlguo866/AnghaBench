; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_external_tmds_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_external_tmds_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_ext_tmds* }
%struct.radeon_encoder_ext_tmds = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_external_tmds_setup(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca %struct.radeon_encoder_ext_tmds*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %5)
  store %struct.radeon_encoder* %6, %struct.radeon_encoder** %3, align 8
  %7 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %7, i32 0, i32 0
  %9 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %8, align 8
  store %struct.radeon_encoder_ext_tmds* %9, %struct.radeon_encoder_ext_tmds** %4, align 8
  %10 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %4, align 8
  %11 = icmp ne %struct.radeon_encoder_ext_tmds* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %55

13:                                               ; preds = %1
  %14 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %4, align 8
  %15 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %54 [
    i32 128, label %17
    i32 129, label %53
  ]

17:                                               ; preds = %13
  %18 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @radeon_i2c_put_byte(i32 %20, i32 %23, i32 8, i32 48)
  %25 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %4, align 8
  %26 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %4, align 8
  %29 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @radeon_i2c_put_byte(i32 %27, i32 %30, i32 9, i32 0)
  %32 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %4, align 8
  %36 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @radeon_i2c_put_byte(i32 %34, i32 %37, i32 10, i32 144)
  %39 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %4, align 8
  %40 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %4, align 8
  %43 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @radeon_i2c_put_byte(i32 %41, i32 %44, i32 12, i32 137)
  %46 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %4, align 8
  %47 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %4, align 8
  %50 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @radeon_i2c_put_byte(i32 %48, i32 %51, i32 8, i32 59)
  br label %55

53:                                               ; preds = %13
  br label %55

54:                                               ; preds = %13
  br label %55

55:                                               ; preds = %12, %54, %53, %17
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_i2c_put_byte(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
