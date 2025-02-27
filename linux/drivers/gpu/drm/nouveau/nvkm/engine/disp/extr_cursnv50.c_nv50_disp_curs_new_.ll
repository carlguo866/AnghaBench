; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_cursnv50.c_nv50_disp_curs_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_cursnv50.c_nv50_disp_curs_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_chan_func = type { i32 }
%struct.nv50_disp = type { i32 }
%struct.nvkm_oclass = type { %struct.nvkm_object* }
%struct.nvkm_object = type { i32 }
%union.anon = type { %struct.nv50_disp_cursor_v0 }
%struct.nv50_disp_cursor_v0 = type { i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"create disp cursor size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"create disp cursor vers %d head %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_disp_curs_new_(%struct.nv50_disp_chan_func* %0, %struct.nv50_disp* %1, i32 %2, i32 %3, %struct.nvkm_oclass* %4, i8* %5, i32 %6, %struct.nvkm_object** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nv50_disp_chan_func*, align 8
  %11 = alloca %struct.nv50_disp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvkm_oclass*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.nvkm_object**, align 8
  %18 = alloca %union.anon*, align 8
  %19 = alloca %struct.nvkm_object*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.nv50_disp_chan_func* %0, %struct.nv50_disp_chan_func** %10, align 8
  store %struct.nv50_disp* %1, %struct.nv50_disp** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.nvkm_oclass* %4, %struct.nvkm_oclass** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.nvkm_object** %7, %struct.nvkm_object*** %17, align 8
  %22 = load i8*, i8** %15, align 8
  %23 = bitcast i8* %22 to %union.anon*
  store %union.anon* %23, %union.anon** %18, align 8
  %24 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %14, align 8
  %25 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %24, i32 0, i32 0
  %26 = load %struct.nvkm_object*, %struct.nvkm_object** %25, align 8
  store %struct.nvkm_object* %26, %struct.nvkm_object** %19, align 8
  %27 = load i32, i32* @ENOSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %21, align 4
  %29 = load %struct.nvkm_object*, %struct.nvkm_object** %19, align 8
  %30 = load i32, i32* %16, align 4
  %31 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %21, align 4
  %33 = load %union.anon*, %union.anon** %18, align 8
  %34 = bitcast %union.anon* %33 to %struct.nv50_disp_cursor_v0*
  %35 = bitcast %struct.nv50_disp_cursor_v0* %34 to i64*
  %36 = load i64, i64* %35, align 4
  %37 = call i32 @nvif_unpack(i32 %32, i8** %15, i32* %16, i64 %36, i32 0, i32 0, i32 0)
  store i32 %37, i32* %21, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %8
  %40 = load %struct.nvkm_object*, %struct.nvkm_object** %19, align 8
  %41 = load %union.anon*, %union.anon** %18, align 8
  %42 = bitcast %union.anon* %41 to %struct.nv50_disp_cursor_v0*
  %43 = getelementptr inbounds %struct.nv50_disp_cursor_v0, %struct.nv50_disp_cursor_v0* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %union.anon*, %union.anon** %18, align 8
  %46 = bitcast %union.anon* %45 to %struct.nv50_disp_cursor_v0*
  %47 = getelementptr inbounds %struct.nv50_disp_cursor_v0, %struct.nv50_disp_cursor_v0* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %48)
  %50 = load %struct.nv50_disp*, %struct.nv50_disp** %11, align 8
  %51 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %50, i32 0, i32 0
  %52 = load %union.anon*, %union.anon** %18, align 8
  %53 = bitcast %union.anon* %52 to %struct.nv50_disp_cursor_v0*
  %54 = getelementptr inbounds %struct.nv50_disp_cursor_v0, %struct.nv50_disp_cursor_v0* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nvkm_head_find(i32* %51, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %39
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %81

61:                                               ; preds = %39
  %62 = load %union.anon*, %union.anon** %18, align 8
  %63 = bitcast %union.anon* %62 to %struct.nv50_disp_cursor_v0*
  %64 = getelementptr inbounds %struct.nv50_disp_cursor_v0, %struct.nv50_disp_cursor_v0* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %20, align 4
  br label %68

66:                                               ; preds = %8
  %67 = load i32, i32* %21, align 4
  store i32 %67, i32* %9, align 4
  br label %81

68:                                               ; preds = %61
  %69 = load %struct.nv50_disp_chan_func*, %struct.nv50_disp_chan_func** %10, align 8
  %70 = load %struct.nv50_disp*, %struct.nv50_disp** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %20, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %20, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %20, align 4
  %78 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %14, align 8
  %79 = load %struct.nvkm_object**, %struct.nvkm_object*** %17, align 8
  %80 = call i32 @nv50_disp_chan_new_(%struct.nv50_disp_chan_func* %69, i32* null, %struct.nv50_disp* %70, i32 %73, i32 %76, i32 %77, %struct.nvkm_oclass* %78, %struct.nvkm_object** %79)
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %68, %66, %58
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32, ...) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @nvkm_head_find(i32*, i32) #1

declare dso_local i32 @nv50_disp_chan_new_(%struct.nv50_disp_chan_func*, i32*, %struct.nv50_disp*, i32, i32, i32, %struct.nvkm_oclass*, %struct.nvkm_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
