; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry.c_registry_person_url_callback_verify_machine_exists.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry.c_registry_person_url_callback_verify_machine_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.registry_person_url_callback_verify_machine_exists_data = type { i32, i32* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @registry_person_url_callback_verify_machine_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @registry_person_url_callback_verify_machine_exists(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.registry_person_url_callback_verify_machine_exists_data*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.registry_person_url_callback_verify_machine_exists_data*
  store %struct.registry_person_url_callback_verify_machine_exists_data* %9, %struct.registry_person_url_callback_verify_machine_exists_data** %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %6, align 8
  %12 = load %struct.registry_person_url_callback_verify_machine_exists_data*, %struct.registry_person_url_callback_verify_machine_exists_data** %5, align 8
  %13 = getelementptr inbounds %struct.registry_person_url_callback_verify_machine_exists_data, %struct.registry_person_url_callback_verify_machine_exists_data* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.registry_person_url_callback_verify_machine_exists_data*, %struct.registry_person_url_callback_verify_machine_exists_data** %5, align 8
  %22 = getelementptr inbounds %struct.registry_person_url_callback_verify_machine_exists_data, %struct.registry_person_url_callback_verify_machine_exists_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %20, %2
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
