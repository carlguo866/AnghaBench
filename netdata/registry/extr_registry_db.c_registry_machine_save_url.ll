; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_db.c_registry_machine_save_url.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_db.c_registry_machine_save_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@D_REGISTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Registry: registry_machine_save_url('%s')\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"V\09%08x\09%08x\09%08x\09%02x\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @registry_machine_save_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @registry_machine_save_url(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %6, align 8
  %12 = load i32, i32* @D_REGISTRY, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @debug(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @fprintf(i32* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31, i8* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @debug(i32, i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
