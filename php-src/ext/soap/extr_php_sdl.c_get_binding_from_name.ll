; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_get_binding_from_name.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_get_binding_from_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_binding_from_name(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = bitcast %struct.TYPE_8__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @smart_str_appends(%struct.TYPE_8__* %8, i8* %10)
  %12 = call i32 @smart_str_appendc(%struct.TYPE_8__* %8, i8 signext 58)
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @smart_str_appends(%struct.TYPE_8__* %8, i8* %13)
  %15 = call i32 @smart_str_0(%struct.TYPE_8__* %8)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @zend_hash_find_ptr(i32 %18, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = call i32 @smart_str_free(%struct.TYPE_8__* %8)
  %23 = load i32, i32* %7, align 4
  ret i32 %23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @smart_str_appends(%struct.TYPE_8__*, i8*) #2

declare dso_local i32 @smart_str_appendc(%struct.TYPE_8__*, i8 signext) #2

declare dso_local i32 @smart_str_0(%struct.TYPE_8__*) #2

declare dso_local i32 @zend_hash_find_ptr(i32, i32) #2

declare dso_local i32 @smart_str_free(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
