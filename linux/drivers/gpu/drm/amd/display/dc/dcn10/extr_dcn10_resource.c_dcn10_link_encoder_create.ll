; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_dcn10_link_encoder_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_dcn10_link_encoder_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_encoder = type { i32 }
%struct.encoder_init_data = type { i64, i32, i64 }
%struct.dcn10_link_encoder = type { %struct.link_encoder }

@GFP_KERNEL = common dso_local global i32 0, align 4
@link_enc_feature = common dso_local global i32 0, align 4
@link_enc_regs = common dso_local global i32* null, align 8
@link_enc_aux_regs = common dso_local global i32* null, align 8
@link_enc_hpd_regs = common dso_local global i32* null, align 8
@le_shift = common dso_local global i32 0, align 4
@le_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.link_encoder* @dcn10_link_encoder_create(%struct.encoder_init_data* %0) #0 {
  %2 = alloca %struct.link_encoder*, align 8
  %3 = alloca %struct.encoder_init_data*, align 8
  %4 = alloca %struct.dcn10_link_encoder*, align 8
  store %struct.encoder_init_data* %0, %struct.encoder_init_data** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.dcn10_link_encoder* @kzalloc(i32 4, i32 %5)
  store %struct.dcn10_link_encoder* %6, %struct.dcn10_link_encoder** %4, align 8
  %7 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %4, align 8
  %8 = icmp ne %struct.dcn10_link_encoder* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.link_encoder* null, %struct.link_encoder** %2, align 8
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %4, align 8
  %12 = load %struct.encoder_init_data*, %struct.encoder_init_data** %3, align 8
  %13 = load i32*, i32** @link_enc_regs, align 8
  %14 = load %struct.encoder_init_data*, %struct.encoder_init_data** %3, align 8
  %15 = getelementptr inbounds %struct.encoder_init_data, %struct.encoder_init_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32*, i32** @link_enc_aux_regs, align 8
  %19 = load %struct.encoder_init_data*, %struct.encoder_init_data** %3, align 8
  %20 = getelementptr inbounds %struct.encoder_init_data, %struct.encoder_init_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  %25 = load i32*, i32** @link_enc_hpd_regs, align 8
  %26 = load %struct.encoder_init_data*, %struct.encoder_init_data** %3, align 8
  %27 = getelementptr inbounds %struct.encoder_init_data, %struct.encoder_init_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = call i32 @dcn10_link_encoder_construct(%struct.dcn10_link_encoder* %11, %struct.encoder_init_data* %12, i32* @link_enc_feature, i32* %17, i32* %24, i32* %29, i32* @le_shift, i32* @le_mask)
  %31 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %4, align 8
  %32 = getelementptr inbounds %struct.dcn10_link_encoder, %struct.dcn10_link_encoder* %31, i32 0, i32 0
  store %struct.link_encoder* %32, %struct.link_encoder** %2, align 8
  br label %33

33:                                               ; preds = %10, %9
  %34 = load %struct.link_encoder*, %struct.link_encoder** %2, align 8
  ret %struct.link_encoder* %34
}

declare dso_local %struct.dcn10_link_encoder* @kzalloc(i32, i32) #1

declare dso_local i32 @dcn10_link_encoder_construct(%struct.dcn10_link_encoder*, %struct.encoder_init_data*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
