; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-digest/src/extr_digest.c_lib_md_digest.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-digest/src/extr_digest.c_lib_md_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_md = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PICOHASH_MAX_DIGEST_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.mrb_md*)* @lib_md_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lib_md_digest(i32* %0, %struct.mrb_md* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mrb_md*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.mrb_md* %1, %struct.mrb_md** %4, align 8
  %8 = load i32, i32* @PICOHASH_MAX_DIGEST_LENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = load %struct.mrb_md*, %struct.mrb_md** %4, align 8
  %13 = getelementptr inbounds %struct.mrb_md, %struct.mrb_md* %12, i32 0, i32 0
  %14 = bitcast %struct.TYPE_3__* %5 to i8*
  %15 = bitcast %struct.TYPE_3__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = call i32 @picohash_final(%struct.TYPE_3__* %5, i8* %11)
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mrb_str_new(i32* %17, i8* %11, i32 %19)
  %21 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %21)
  ret i32 %20
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @picohash_final(%struct.TYPE_3__*, i8*) #3

declare dso_local i32 @mrb_str_new(i32*, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
