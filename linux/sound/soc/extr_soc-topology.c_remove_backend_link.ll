; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_remove_backend_link.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_remove_backend_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.snd_soc_component*, %struct.snd_soc_dobj*)* }

@SOC_TPLG_PASS_LINK = common dso_local global i32 0, align 4
@SND_SOC_DOBJ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, %struct.snd_soc_dobj*, i32)* @remove_backend_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_backend_link(%struct.snd_soc_component* %0, %struct.snd_soc_dobj* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_dobj*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_soc_dobj* %1, %struct.snd_soc_dobj** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SOC_TPLG_PASS_LINK, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %39

11:                                               ; preds = %3
  %12 = load %struct.snd_soc_dobj*, %struct.snd_soc_dobj** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dobj, %struct.snd_soc_dobj* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load %struct.snd_soc_dobj*, %struct.snd_soc_dobj** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dobj, %struct.snd_soc_dobj* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.snd_soc_component*, %struct.snd_soc_dobj*)*, i32 (%struct.snd_soc_component*, %struct.snd_soc_dobj*)** %20, align 8
  %22 = icmp ne i32 (%struct.snd_soc_component*, %struct.snd_soc_dobj*)* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.snd_soc_dobj*, %struct.snd_soc_dobj** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dobj, %struct.snd_soc_dobj* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.snd_soc_component*, %struct.snd_soc_dobj*)*, i32 (%struct.snd_soc_component*, %struct.snd_soc_dobj*)** %27, align 8
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %30 = load %struct.snd_soc_dobj*, %struct.snd_soc_dobj** %5, align 8
  %31 = call i32 %28(%struct.snd_soc_component* %29, %struct.snd_soc_dobj* %30)
  br label %32

32:                                               ; preds = %23, %16, %11
  %33 = load i32, i32* @SND_SOC_DOBJ_NONE, align 4
  %34 = load %struct.snd_soc_dobj*, %struct.snd_soc_dobj** %5, align 8
  %35 = getelementptr inbounds %struct.snd_soc_dobj, %struct.snd_soc_dobj* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.snd_soc_dobj*, %struct.snd_soc_dobj** %5, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dobj, %struct.snd_soc_dobj* %36, i32 0, i32 0
  %38 = call i32 @list_del(i32* %37)
  br label %39

39:                                               ; preds = %32, %10
  ret void
}

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
