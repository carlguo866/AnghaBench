; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_info = type { i32, i8*, i32, i32, i32, i32 }

@M_AC97 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s:ac97\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ac97 codec\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"eapdinv\00", align 1
@AC97_F_EAPD_INV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"softpcmvol\00", align 1
@SD_F_SOFTPCMVOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ac97_info* @ac97_create(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ac97_info*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @M_AC97, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.ac97_info* @malloc(i32 32, i32 %9, i32 %12)
  store %struct.ac97_info* %13, %struct.ac97_info** %7, align 8
  %14 = load %struct.ac97_info*, %struct.ac97_info** %7, align 8
  %15 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i8* @device_get_nameunit(i32 %17)
  %19 = call i32 @snprintf(i32 %16, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.ac97_info*, %struct.ac97_info** %7, align 8
  %21 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @snd_mtxcreate(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.ac97_info*, %struct.ac97_info** %7, align 8
  %25 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @M_AC97, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @kobj_create(i32 %26, i32 %27, i32 %30)
  %32 = load %struct.ac97_info*, %struct.ac97_info** %7, align 8
  %33 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.ac97_info*, %struct.ac97_info** %7, align 8
  %36 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.ac97_info*, %struct.ac97_info** %7, align 8
  %39 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ac97_info*, %struct.ac97_info** %7, align 8
  %41 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @device_get_name(i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @device_get_unit(i32 %44)
  %46 = call i64 @resource_int_value(i32 %43, i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %3
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* @AC97_F_EAPD_INV, align 4
  %53 = load %struct.ac97_info*, %struct.ac97_info** %7, align 8
  %54 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %48, %3
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @device_get_name(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @device_get_unit(i32 %60)
  %62 = call i64 @resource_int_value(i32 %59, i32 %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @pcm_getflags(i32 %69)
  %71 = load i32, i32* @SD_F_SOFTPCMVOL, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @pcm_setflags(i32 %68, i32 %72)
  br label %74

74:                                               ; preds = %67, %64, %57
  %75 = load %struct.ac97_info*, %struct.ac97_info** %7, align 8
  ret %struct.ac97_info* %75
}

declare dso_local %struct.ac97_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @snd_mtxcreate(i32, i8*) #1

declare dso_local i32 @kobj_create(i32, i32, i32) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @pcm_setflags(i32, i32) #1

declare dso_local i32 @pcm_getflags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
