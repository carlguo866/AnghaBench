; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_cvol_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_cvol_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_ac97 = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_kcontrol_new = type { i32 }

@AC97_PHONE = common dso_local global i32 0, align 4
@AC97_PCM = common dso_local global i32 0, align 4
@db_scale_5bit_12db_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_ac97*)* @snd_ac97_cvol_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_cvol_new(%struct.snd_card* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.snd_ac97* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_card*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_ac97*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.snd_kcontrol*, align 8
  %16 = alloca %struct.snd_kcontrol_new, align 4
  %17 = alloca %struct.snd_kcontrol_new, align 4
  store %struct.snd_card* %0, %struct.snd_card** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.snd_ac97* %5, %struct.snd_ac97** %13, align 8
  %18 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @snd_ac97_valid_reg(%struct.snd_ac97* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %88

23:                                               ; preds = %6
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @AC97_DOUBLE(i8* %27, i32 %28, i32 8, i32 0, i32 %29, i32 1)
  %31 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %16, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %33 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %16, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %37 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %16, %struct.snd_ac97* %36)
  store %struct.snd_kcontrol* %37, %struct.snd_kcontrol** %15, align 8
  br label %50

38:                                               ; preds = %23
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @AC97_SINGLE(i8* %39, i32 %40, i32 0, i32 %41, i32 1)
  %43 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %17, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %45 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %17, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %49 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %17, %struct.snd_ac97* %48)
  store %struct.snd_kcontrol* %49, %struct.snd_kcontrol** %15, align 8
  br label %50

50:                                               ; preds = %38, %26
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @AC97_PHONE, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @AC97_PCM, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %60 = load i32, i32* @db_scale_5bit_12db_max, align 4
  %61 = call i32 @set_tlv_db_scale(%struct.snd_kcontrol* %59, i32 %60)
  br label %67

62:                                               ; preds = %54, %50
  %63 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @find_db_scale(i32 %64)
  %66 = call i32 @set_tlv_db_scale(%struct.snd_kcontrol* %63, i32 %65)
  br label %67

67:                                               ; preds = %62, %58
  %68 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %69 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %15, align 8
  %70 = call i32 @snd_ctl_add(%struct.snd_card* %68, %struct.snd_kcontrol* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %7, align 4
  br label %88

75:                                               ; preds = %67
  %76 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @snd_ac97_read(%struct.snd_ac97* %78, i32 %79)
  %81 = and i32 %80, 32896
  %82 = load i32, i32* %11, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %12, align 4
  %85 = shl i32 %84, 8
  %86 = or i32 %83, %85
  %87 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %76, i32 %77, i32 %86)
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %75, %73, %22
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @snd_ac97_valid_reg(%struct.snd_ac97*, i32) #1

declare dso_local i32 @AC97_DOUBLE(i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_ac97*) #1

declare dso_local i32 @AC97_SINGLE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @set_tlv_db_scale(%struct.snd_kcontrol*, i32) #1

declare dso_local i32 @find_db_scale(i32) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

declare dso_local i32 @snd_ac97_read(%struct.snd_ac97*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
