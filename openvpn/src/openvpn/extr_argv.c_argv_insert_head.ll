; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_argv.c_argv_insert_head.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_argv.c_argv_insert_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @argv_insert_head(%struct.argv* %0, i8* %1) #0 {
  %3 = alloca %struct.argv, align 8
  %4 = alloca %struct.argv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.argv, align 8
  store %struct.argv* %0, %struct.argv** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.argv*, %struct.argv** %4, align 8
  %8 = call i32* @argv_clone(%struct.argv* %7, i32 1)
  %9 = getelementptr inbounds %struct.argv, %struct.argv* %6, i32 0, i32 0
  store i32* %8, i32** %9, align 8
  %10 = bitcast %struct.argv* %3 to i8*
  %11 = bitcast %struct.argv* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false)
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @string_alloc(i8* %12, i32* null)
  %14 = getelementptr inbounds %struct.argv, %struct.argv* %3, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %13, i32* %16, align 4
  %17 = getelementptr inbounds %struct.argv, %struct.argv* %3, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  ret i32* %18
}

declare dso_local i32* @argv_clone(%struct.argv*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @string_alloc(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
