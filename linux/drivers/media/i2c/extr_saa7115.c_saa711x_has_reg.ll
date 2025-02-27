; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_has_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_has_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SAA7111 = common dso_local global i32 0, align 4
@SAA7111A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @saa711x_has_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_has_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SAA7111, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 15
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 19
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 25
  br i1 %23, label %24, label %30

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 29
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 30
  br label %30

30:                                               ; preds = %27, %24, %21, %15, %12, %9
  %31 = phi i1 [ false, %24 ], [ false, %21 ], [ false, %15 ], [ false, %12 ], [ false, %9 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %263

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SAA7111A, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 15
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 20
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 24
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 25
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 29
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 30
  br label %61

61:                                               ; preds = %58, %55, %52, %49, %46, %43, %40, %37
  %62 = phi i1 [ false, %55 ], [ false, %52 ], [ false, %49 ], [ false, %46 ], [ false, %43 ], [ false, %40 ], [ false, %37 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %263

64:                                               ; preds = %33
  %65 = load i32, i32* %5, align 4
  %66 = icmp sge i32 %65, 59
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp sle i32 %68, 63
  br i1 %69, label %123, label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 92
  br i1 %72, label %123, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 95
  br i1 %75, label %123, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 163
  br i1 %78, label %123, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 167
  br i1 %81, label %123, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %83, 171
  br i1 %84, label %123, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %86, 175
  br i1 %87, label %123, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %5, align 4
  %90 = icmp sge i32 %89, 181
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %5, align 4
  %93 = icmp sle i32 %92, 183
  br i1 %93, label %123, label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, 211
  br i1 %96, label %123, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 215
  br i1 %99, label %123, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %5, align 4
  %102 = icmp eq i32 %101, 219
  br i1 %102, label %123, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %5, align 4
  %105 = icmp eq i32 %104, 223
  br i1 %105, label %123, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %5, align 4
  %108 = icmp sge i32 %107, 229
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %5, align 4
  %111 = icmp sle i32 %110, 231
  br i1 %111, label %123, label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, 130
  br i1 %114, label %123, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %5, align 4
  %117 = icmp sge i32 %116, 137
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %5, align 4
  %120 = icmp sle i32 %119, 142
  br label %121

121:                                              ; preds = %118, %115
  %122 = phi i1 [ false, %115 ], [ %120, %118 ]
  br label %123

123:                                              ; preds = %121, %112, %109, %103, %100, %97, %94, %91, %85, %82, %79, %76, %73, %70, %67
  %124 = phi i1 [ true, %112 ], [ true, %109 ], [ true, %103 ], [ true, %100 ], [ true, %97 ], [ true, %94 ], [ true, %91 ], [ true, %85 ], [ true, %82 ], [ true, %79 ], [ true, %76 ], [ true, %73 ], [ true, %70 ], [ true, %67 ], [ %122, %121 ]
  %125 = zext i1 %124 to i32
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %263

129:                                              ; preds = %123
  %130 = load i32, i32* %4, align 4
  switch i32 %130, label %262 [
    i32 132, label %131
    i32 131, label %146
    i32 130, label %170
    i32 129, label %203
    i32 128, label %223
  ]

131:                                              ; preds = %129
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 20
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i32, i32* %5, align 4
  %136 = icmp slt i32 %135, 24
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %5, align 4
  %139 = icmp sgt i32 %138, 30
  br i1 %139, label %140, label %143

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %5, align 4
  %142 = icmp slt i32 %141, 32
  br label %143

143:                                              ; preds = %140, %137, %131
  %144 = phi i1 [ false, %137 ], [ false, %131 ], [ %142, %140 ]
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %3, align 4
  br label %263

146:                                              ; preds = %129
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 20
  br i1 %148, label %149, label %167

149:                                              ; preds = %146
  %150 = load i32, i32* %5, align 4
  %151 = icmp slt i32 %150, 24
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %5, align 4
  %154 = icmp sgt i32 %153, 30
  br i1 %154, label %155, label %167

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %5, align 4
  %157 = icmp slt i32 %156, 32
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %5, align 4
  %160 = icmp sgt i32 %159, 63
  br i1 %160, label %161, label %167

161:                                              ; preds = %158, %155
  %162 = load i32, i32* %5, align 4
  %163 = icmp ne i32 %162, 93
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* %5, align 4
  %166 = icmp slt i32 %165, 99
  br label %167

167:                                              ; preds = %164, %161, %158, %152, %146
  %168 = phi i1 [ false, %161 ], [ false, %158 ], [ false, %152 ], [ false, %146 ], [ %166, %164 ]
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %3, align 4
  br label %263

170:                                              ; preds = %129
  %171 = load i32, i32* %5, align 4
  %172 = icmp slt i32 %171, 26
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %5, align 4
  %175 = icmp sgt i32 %174, 30
  br i1 %175, label %176, label %200

176:                                              ; preds = %173, %170
  %177 = load i32, i32* %5, align 4
  %178 = icmp slt i32 %177, 32
  br i1 %178, label %182, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %5, align 4
  %181 = icmp sgt i32 %180, 47
  br i1 %181, label %182, label %200

182:                                              ; preds = %179, %176
  %183 = load i32, i32* %5, align 4
  %184 = icmp slt i32 %183, 99
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %5, align 4
  %187 = icmp sgt i32 %186, 127
  br i1 %187, label %188, label %200

188:                                              ; preds = %185, %182
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 51
  br i1 %190, label %191, label %200

191:                                              ; preds = %188
  %192 = load i32, i32* %5, align 4
  %193 = icmp ne i32 %192, 55
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i32, i32* %5, align 4
  %196 = icmp ne i32 %195, 129
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32, i32* %5, align 4
  %199 = icmp slt i32 %198, 240
  br label %200

200:                                              ; preds = %197, %194, %191, %188, %185, %179, %173
  %201 = phi i1 [ false, %194 ], [ false, %191 ], [ false, %188 ], [ false, %185 ], [ false, %179 ], [ false, %173 ], [ %199, %197 ]
  %202 = zext i1 %201 to i32
  store i32 %202, i32* %3, align 4
  br label %263

203:                                              ; preds = %129
  %204 = load i32, i32* %5, align 4
  %205 = icmp slt i32 %204, 32
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* %5, align 4
  %208 = icmp sgt i32 %207, 47
  br i1 %208, label %209, label %220

209:                                              ; preds = %206, %203
  %210 = load i32, i32* %5, align 4
  %211 = icmp ne i32 %210, 101
  br i1 %211, label %212, label %220

212:                                              ; preds = %209
  %213 = load i32, i32* %5, align 4
  %214 = icmp slt i32 %213, 252
  br i1 %214, label %218, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %5, align 4
  %217 = icmp sgt i32 %216, 254
  br label %218

218:                                              ; preds = %215, %212
  %219 = phi i1 [ true, %212 ], [ %217, %215 ]
  br label %220

220:                                              ; preds = %218, %209, %206
  %221 = phi i1 [ false, %209 ], [ false, %206 ], [ %219, %218 ]
  %222 = zext i1 %221 to i32
  store i32 %222, i32* %3, align 4
  br label %263

223:                                              ; preds = %129
  %224 = load i32, i32* %5, align 4
  %225 = icmp slt i32 %224, 26
  br i1 %225, label %229, label %226

226:                                              ; preds = %223
  %227 = load i32, i32* %5, align 4
  %228 = icmp sgt i32 %227, 29
  br i1 %228, label %229, label %259

229:                                              ; preds = %226, %223
  %230 = load i32, i32* %5, align 4
  %231 = icmp slt i32 %230, 32
  br i1 %231, label %235, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* %5, align 4
  %234 = icmp sgt i32 %233, 34
  br i1 %234, label %235, label %259

235:                                              ; preds = %232, %229
  %236 = load i32, i32* %5, align 4
  %237 = icmp slt i32 %236, 38
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* %5, align 4
  %240 = icmp sgt i32 %239, 40
  br i1 %240, label %241, label %259

241:                                              ; preds = %238, %235
  %242 = load i32, i32* %5, align 4
  %243 = icmp ne i32 %242, 51
  br i1 %243, label %244, label %259

244:                                              ; preds = %241
  %245 = load i32, i32* %5, align 4
  %246 = icmp ne i32 %245, 55
  br i1 %246, label %247, label %259

247:                                              ; preds = %244
  %248 = load i32, i32* %5, align 4
  %249 = icmp slt i32 %248, 99
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %5, align 4
  %252 = icmp sgt i32 %251, 127
  br i1 %252, label %253, label %259

253:                                              ; preds = %250, %247
  %254 = load i32, i32* %5, align 4
  %255 = icmp ne i32 %254, 129
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load i32, i32* %5, align 4
  %258 = icmp slt i32 %257, 240
  br label %259

259:                                              ; preds = %256, %253, %250, %244, %241, %238, %232, %226
  %260 = phi i1 [ false, %253 ], [ false, %250 ], [ false, %244 ], [ false, %241 ], [ false, %238 ], [ false, %232 ], [ false, %226 ], [ %258, %256 ]
  %261 = zext i1 %260 to i32
  store i32 %261, i32* %3, align 4
  br label %263

262:                                              ; preds = %129
  store i32 1, i32* %3, align 4
  br label %263

263:                                              ; preds = %262, %259, %220, %200, %167, %143, %128, %61, %30
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
